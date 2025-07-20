import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/signin_with_phone/input_otp_state/input_otp_state.dart';
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
    return BlocConsumer<SigninWithPhoneCubit, SigninWithPhoneState>(
      listener: (context, state) {
        state.maybeWhen(
          inputPhone: (inputPhoneState) {
            if (inputPhoneState.failureMessage.isSome()) {
              showFailedToast(
                context,
                inputPhoneState.failureMessage.getOrCrash(),
              );
            }
            if (inputPhoneState.isSuccessful) {
              context.router.replaceAll([LandingRoute()]);
            }
          },

          inputOTP: (inputOtpState) {
            if (inputOtpState.failureMessage.isSome()) {
              showFailedToast(
                context,
                inputOtpState.failureMessage.getOrCrash(),
              );
            }
            if (inputOtpState.isSuccessful) {
              context.router.replaceAll([LandingRoute()]);
            }
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: state.maybeWhen(
              inputPhone: (s) => _PhoneInputForm(isLoading: s.isLoading),
              inputOTP: (s) => _OtpVerificationForm(s),
              orElse: () => Center(child: CircularProgressIndicator()),
            ),
          ),
        );
      },
    );
  }
}

class _PhoneInputForm extends StatelessWidget {
  final bool isLoading;

  final phone = MutableObject("");

  _PhoneInputForm({required this.isLoading});

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
          TextLarge('Sign In With Your Phone', align: TextAlign.center),
          const VGap(),
          TextRegular('We will send you a verification code'),
          const SizedBox(height: 48),
          _PhoneInputField(onChanged: (value) => phone.value = value),
          const SizedBox(height: 32),

          isLoading
              ? CircularProgressIndicator()
              : FilledButton(
                onPressed:
                    () => context.read<SigninWithPhoneCubit>().signInWithPhone(
                      "+94${phone.value}",
                    ),
                child: Text('Send Verification Code'),
              ),
        ],
      ),
    );
  }
}

class _PhoneInputField extends StatelessWidget {
  final Function(String) onChanged;
  const _PhoneInputField({required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextRegular("🇱🇰 +94"),
        const HGap(gap: 20),
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

class _OtpVerificationForm extends StatelessWidget {
  final InputOtpState state;
  final otp = MutableObject<List<String>>([]);
  _OtpVerificationForm(this.state);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24),
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
          _OtpInputRow(onOtpChanged: (otpList) => otp.value = otpList),
          const VGap(gap: 20),
          FilledButton(
            onPressed:
                state.isLoading
                    ? null
                    : () {
                      if (otp.value.contains("")) return;
                      final otpStr = otp.value.join();
                      context.read<SigninWithPhoneCubit>().signInWithOTP(
                        otpStr,
                      );
                    },
            child:
                state.isLoading
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Verifying...'),
                        const HGap(),
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(),
                        ),
                      ],
                    )
                    : Text('Verify Code'),
          ),
          const VGap(gap: 48),
          if (state.isResendActive)
            Column(
              children: [
                TextRegular('Didn\'t receive the code?'),
                TextButton(
                  onPressed:
                      () => context.read<SigninWithPhoneCubit>().resendOTP(),
                  child: const Text('Resend Code'),
                ),
              ],
            ),
          if (!state.isResendActive)
            TextSmall(
              'Didn\'t receive the code? try again in ${state.timeLeft} seconds',
            ),
          const VGap(),
        ],
      ),
    );
  }
}

class _OtpInputRow extends StatelessWidget {
  final Function(List<String>) onOtpChanged;
  final List<String> otp = List.filled(6, "");

  _OtpInputRow({required this.onOtpChanged});

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
