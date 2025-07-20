import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:safe_zone/application/org_donation_tab/org_donation_tab_cubit.dart';
import 'package:safe_zone/application/org_menu/org_menu_cubit.dart';
import 'package:safe_zone/application/org_req_tab/org_req_tab_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard/donation_tab_menu_item.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard/request_tab_menu_item.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard/service_chip.dart';
import 'package:safe_zone/presentation/screens/organization/dashboard/tab_menu_item.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
=======
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392

@RoutePage()
class OrgDashboardPage extends StatelessWidget implements AutoRouteWrapper {
  const OrgDashboardPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<OrgMenuCubit>()),
      BlocProvider(create: (context) => getIt<OrgReqTabCubit>()),
      BlocProvider(create: (context) => getIt<OrgDonationTabCubit>()),
    ],
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
<<<<<<< HEAD
          const SVGap(gap: 20),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/cover.jpg",
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                      "assets/images/avatar.png",
                                    ),
                                  ),
                                  const HGap(gap: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextMedium("The Ginger Cat", bold: true),
                                      const VGap(gap: 5),
                                      TextRegular("ginger@cat.meow"),
                                    ],
                                  ),
                                ],
                              ),

                              const Spacer(),
                              OrgServiceChip(
                                title: "Kids Clothes",
                                image: "assets/images/avatar.png",
                              ),
                              OrgServiceChip(
                                title: "Food",
                                image: "assets/images/avatar.png",
                              ),
                              OrgServiceChip(
                                title: "Books",
                                image: "assets/images/avatar.png",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SVGap(gap: 20),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                color: Colors.white.withAlpha(25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextRegular(
                        "We are a non-profit organization dedicated to providing "
                        "support and resources for those in need. Our mission is "
                        "to make a positive impact in the community through various "
                        "programs and initiatives.",
                      ),
                      const VGap(gap: 5),
                      Divider(),
                      const VGap(gap: 5),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.white),
                              const HGap(),
                              TextRegular("123 Charity Lane, Cityville"),
                            ],
                          ),
                          const HGap(gap: 20),
                          Row(
                            children: [
                              Icon(Icons.money, color: Colors.white),
                              const HGap(),
                              TextRegular("123 Charity Lane, Cityville"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SVGap(gap: 20),
          SliverToBoxAdapter(
            child: Row(
              children: [
                const HGap(gap: 20),
                OrgTabMenuItem(state: OrgMenuState.requests),
                const HGap(gap: 50),
                OrgTabMenuItem(state: OrgMenuState.donations),
                const HGap(gap: 20),
              ],
            ),
          ),
          const SVGap(gap: 20),
          SliverToBoxAdapter(
            child:
                context.watch<OrgMenuCubit>().state == OrgMenuState.requests
                    ? const OrgRequestsTabView()
                    : const OrgDonationsTabView(),
          ),

          const SVGap(gap: 20),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextRegular("Recent Donation Requests", bold: true),
                  const VGap(gap: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const DonationRequestCard();
                    },
=======
          SliverToBoxAdapter(
            child: Card(
              margin: const EdgeInsets.all(20),
              color: Colors.white.withAlpha(25),

              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/cover.jpg",
                      fit: BoxFit.fitWidth,
                      height: 160,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            "assets/images/avatar.png",
                          ),
                        ),
                        const HGap(gap: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextMedium("The Ginger Cat", bold: true),
                            const VGap(gap: 5),
                            TextRegular("ginger@cat.meow"),
                          ],
                        ),
                      ],
                    ),
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
<<<<<<< HEAD
  }
}

class OrgDonationsTabView extends StatelessWidget {
  const OrgDonationsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const HGap(gap: 20),
            OrDonationTabMenuItem(state: DonationState.pending),
            const HGap(gap: 50),
            OrDonationTabMenuItem(state: DonationState.accepted),
            const HGap(gap: 50),
            OrDonationTabMenuItem(state: DonationState.declined),
            const HGap(gap: 20),
          ],
        ),
      ],
    );
  }
}

class OrgRequestsTabView extends StatelessWidget {
  const OrgRequestsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const HGap(gap: 20),
            OrgRequestTabMenuItem(state: DonationRequestState.pending),
            const HGap(gap: 50),
            OrgRequestTabMenuItem(state: DonationRequestState.accepted),
            const HGap(gap: 50),
            OrgRequestTabMenuItem(state: DonationRequestState.fundRaised),
            const HGap(gap: 50),
            OrgRequestTabMenuItem(state: DonationRequestState.donated),
            const HGap(gap: 20),
          ],
        ),
      ],
    );
  }
}

class DonationRequestCard extends StatelessWidget {
  const DonationRequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Material(
        color: Colors.white.withAlpha(25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                  const HGap(gap: 10),
                  TextRegular("Berry AM", bold: true),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/images/logo.png", width: 32, height: 32),
                  const HGap(gap: 10),
                  TextRegular("Kids Clothes • 5 items"),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/images/logo.png", width: 32, height: 32),
                  const HGap(gap: 10),
                  TextRegular("Flood"),
                ],
              ),
              TextButton.icon(
                onPressed:
                    () => showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Location"),
                          content: SizedBox(
                            width: 600,
                            height: 600,
                            child: FlutterMap(
                              options: MapOptions(
                                initialCenter: LatLng(51.509364, -0.128928),
                                initialZoom: 9.2,
                              ),
                              children: [
                                TileLayer(
                                  urlTemplate:
                                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                ),
                                MarkerLayer(
                                  markers: [
                                    Marker(
                                      point: LatLng(51.509364, -0.128928),
                                      width: 40,
                                      height: 40,
                                      child: Icon(
                                        Icons.location_on,
                                        color: Colors.red,
                                        size: 40,
                                      ),
                                    ),
                                  ],
                                ),
                                RichAttributionWidget(
                                  attributions: [
                                    TextSourceAttribution(
                                      'OpenStreetMap contributors',
                                      onTap:
                                          () => launchUrl(
                                            Uri.parse(
                                              'https://openstreetmap.org/copyright',
                                            ),
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton.icon(
                              onPressed: () {
                                final coordinates = "51.509364, -0.128928";
                                Clipboard.setData(
                                  ClipboardData(text: coordinates),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Coordinates copied to clipboard',
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(Icons.copy),
                              label: Text("Copy Coordinates"),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text("Close"),
                            ),
                          ],
                        );
                      },
                    ),
                icon: Icon(Icons.location_on),
                label: Text(
                  "123 Charity Lane, Cityville",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.alarm),
                  const HGap(gap: 10),
                  TextRegular("10 minutes ago"),
                ],
              ),
              FilledButton.icon(
                onPressed: () {},
                label: Text("Accept"),
                icon: Icon(Icons.check),
              ),
            ],
          ),
        ),
      ),
    );
=======
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392
  }
}
