import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:safe_zone/application/auth/auth_cubit.dart';
import 'package:safe_zone/application/signin_with_phone/signin_with_phone_cubit.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/core/mutable_object.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class SigninPage extends StatelessWidget implements AutoRouteWrapper {
  const SigninPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SigninWithPhoneCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener:
          (context, state) => state.maybeWhen(
            authenticated: (user) => context.router.replaceAll([HomeRoute()]),
            orElse: () => Unit,
          ),
      child: BlocConsumer<SigninWithPhoneCubit, SigninWithPhoneState>(
        listener: (context, state) {
          state.maybeWhen(
            succeed:
                () => showSuccessToast(context, 'Authentication successful'),
            failed: (message) => showFailedToast(context, message),
            orElse: () => Unit,
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: state.maybeWhen(
                initial: () => PhoneInputForm(),
                codeSent: () => OtpVerificationForm(),
                orElse: () => PhoneInputForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PhoneInputForm extends HookWidget {
  PhoneInputForm({super.key});

  final phone = MutableObject("");

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const VGap(gap: 48),
          Image.asset('assets/images/logo.png', width: 120, height: 120),
          const VGap(gap: 48),
          TextLarge('Enter your phone number'),
          const VGap(),
          TextRegular('We will send you a verification code'),
          const SizedBox(height: 48),
          PhoneInputField(onChanged: (value) => phone.value = value),
          const SizedBox(height: 32),
          FilledButton(
            onPressed:
                () => context.read<SigninWithPhoneCubit>().signInWithPhone(
                  "+94${phone.value}",
                ),
            child: const Text('Send Code', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}

class PhoneInputField extends StatelessWidget {
  final Function(String) onChanged;
  const PhoneInputField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextRegular("🇱🇰 +94"),
        const HGap(),
        Expanded(
          child: TextFormField(
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: "Phone number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.white.withAlpha(100),
              filled: true,
            ),
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(9),
            ],
          ),
        ),
      ],
    );
  }
}

class OtpVerificationForm extends StatelessWidget {
  const OtpVerificationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const VGap(gap: 48),
          TextLarge('Verification Code'),
          const VGap(),
          TextRegular(
            "Enter the 6-digit code sent to ${context.read<SigninWithPhoneCubit>().phone.getOrCrash()}",
          ),
          const VGap(gap: 48),
          OtpInputRow(
            onOtpChanged: (otp) {
              if (otp.contains("")) {
                return;
              }

              final otpString = otp.map((e) => e.toString()).join();
              context.read<SigninWithPhoneCubit>().signInWithOTP(otpString);
            },
          ),
          const VGap(gap: 20),
          FilledButton(onPressed: () {}, child: const Text('Verify Code')),
          const VGap(gap: 48),
          ResendTimerWidget(),
          const VGap(),
        ],
      ),
    );
  }
}

class OtpInputRow extends StatelessWidget {
  final Function(List<String>) onOtpChanged;
  final List<String> otp = List.filled(6, "");

  OtpInputRow({super.key, required this.onOtpChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        6,
        (index) => SizedBox(
          width: 48,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: Theme.of(context).textTheme.headlineMedium,
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outline.withAlpha(100),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                  width: 2,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            onChanged: (value) {
              if (value.isNotEmpty) {
                otp[index] = value;
                onOtpChanged(otp);
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
    );
  }
}

class VerifyOtpButton extends StatelessWidget {
  final List<TextEditingController> controllers;
  final GlobalKey<FormState> formKey;
  final String verificationId;

  const VerifyOtpButton({
    Key? key,
    required this.controllers,
    required this.formKey,
    required this.verificationId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState?.validate() ?? false) {
          final otp = controllers.map((c) => c.text).join();
          context.read<SigninWithPhoneCubit>().signInWithOTP(
            verificationId,
            otp,
          );
        }
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Text('Verify Code', style: TextStyle(fontSize: 16)),
    );
  }
}

class ResendTimerWidget extends StatelessWidget {
  final bool isTimerActive;
  final int timeLeft;
  final String phoneNumber;
  final int? resendToken;

  const ResendTimerWidget({
    Key? key,
    required this.isTimerActive,
    required this.timeLeft,
    required this.phoneNumber,
    this.resendToken,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Didn\'t receive the code? ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        if (isTimerActive)
          Text(
            'Resend in ${timeLeft}s',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          )
        else
          TextButton(
            onPressed: () {
              context.read<SigninWithPhoneCubit>().resendOTP(
                phoneNumber,
                resendToken,
              );
            },
            child: Text(
              'Resend',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
