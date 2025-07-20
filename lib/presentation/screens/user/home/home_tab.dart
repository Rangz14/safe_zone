import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool _isThreatMode = false;

  // Method to allow the FAB to toggle the UI mode
  void toggleThreatMode() {
    setState(() {
      _isThreatMode = !_isThreatMode;
    });
  }

  // Dummy data
  final List<Map<String, String>> _threats = [
    {'name': 'Flood Warning', 'location': 'Colombo'},
    {'name': 'Landslide Alert', 'location': 'Dehiwala'},
  ];
  final List<Map<String, dynamic>> _services = [
    {'name': 'Food', 'progress': 0.75},
    {'name': 'Medicine', 'progress': 0.5},
    {'name': 'Clothing', 'progress': 0.9},
    {'name': 'Shelter', 'progress': 0.4},
  ];
  final List<String> _carouselImages = [
    'assets/images/carousal/1.jpg',
    'assets/images/carousal/2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    // Note: The Scaffold and BottomNavBar have been removed from here.
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child:
              _isThreatMode
                  ? _buildThreatModeUI(context)
                  : _buildNormalModeUI(context),
        ),
      ),
    );
  }

  Widget _buildNormalModeUI(BuildContext context) {
    return Column(
      key: const ValueKey('normal_mode'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _UserHeader(),
        const SizedBox(height: 24),
        _buildCarouselSlider(),
        const SizedBox(height: 24),
        Text(
          'Donate for a Cause ❤️',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        _buildDonationList(context),
      ],
    );
  }

  Widget _buildThreatModeUI(BuildContext context) {
    return Column(
      key: const ValueKey('threat_mode'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _UserHeader(),
        const SizedBox(height: 24),
        _buildThreatWarning(context),
        const SizedBox(height: 16),
        _buildThreatList(),
        const SizedBox(height: 24),
        Text(
          'Request Emergency Service 🙏',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        _buildServiceRequestGrid(),
      ],
    );
  }

  // --- UI Components for HomePage ---

  Widget _buildCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180.0,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
      ),
      items:
          _carouselImages.map((imgPath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
    );
  }

  Widget _buildDonationList(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _services.length,
      itemBuilder: (context, index) {
        final service = _services[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: _DonationProgressIndicator(
              progress: service['progress'],
              child: Image.asset(
                'assets/images/service.png',
                width: 24,
                height: 24,
              ),
            ),
            title: Text(
              service['name'],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${(service['progress'] * 100).toInt()}% goal reached',
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text('Donate'),
            ),
          ),
        );
      },
    );
  }

  Widget _buildThreatWarning(BuildContext context) {
    return Card(
      color: Colors.red.shade700,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.warning_rounded, color: Colors.white, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                'Active Threat Alert in Your Area. Stay Safe!',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThreatList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          _threats.map((threat) {
            return Card(
              color: Colors.red.shade50,
              margin: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/threat.png',
                  width: 40,
                  height: 40,
                ),
                title: Text(
                  threat['name']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Location: ${threat['location']}'),
              ),
            );
          }).toList(),
    );
  }

  Widget _buildServiceRequestGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 3 / 2,
      ),
      itemCount: _services.length,
      itemBuilder: (context, index) {
        final service = _services[index];
        return Card(
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/service.png', width: 48, height: 48),
                const SizedBox(height: 12),
                Text(
                  service['name'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _UserHeader extends StatelessWidget {
  const _UserHeader();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage('assets/images/user.jpg'),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Welcome back 👋',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'John Doe',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

class _DonationProgressIndicator extends StatelessWidget {
  final double progress;
  final Widget child;
  const _DonationProgressIndicator({
    required this.progress,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: CustomPaint(
        painter: _RingChartPainter(
          progress: progress,
          backgroundColor: Colors.grey.shade300,
          progressColor: Theme.of(context).primaryColor,
        ),
        child: Center(child: child),
      ),
    );
  }
}

class _RingChartPainter extends CustomPainter {
  final double progress;
  final Color backgroundColor;
  final Color progressColor;
  _RingChartPainter({
    required this.progress,
    required this.backgroundColor,
    required this.progressColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);
    final backgroundPaint =
        Paint()
          ..color = backgroundColor
          ..strokeWidth = 5
          ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, backgroundPaint);
    final progressPaint =
        Paint()
          ..color = progressColor
          ..strokeWidth = 5
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;
    double sweepAngle = 2 * pi * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
