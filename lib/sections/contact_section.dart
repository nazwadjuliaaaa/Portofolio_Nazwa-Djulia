import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 100,
        horizontal: isDesktop ? 100 : 20,
      ),
      color: AppColors.surface,
      child: Column(
        children: [
          const Text(
            'Let\'s Connect',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'I am always open to discussing web development,\nUI/UX design, or other collaboration opportunities.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 18,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 60),
          Wrap(
            spacing: 40,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _buildContactItem(
                FontAwesomeIcons.envelope,
                'Email',
                'nazwadjulia24@gmail.com',
                () => _launchUrl('mailto:nazwadjulia24@gmail.com'),
              ),
              _buildContactItem(
                FontAwesomeIcons.linkedin,
                'LinkedIn',
                'linkedin.com/in/nazwa-djulia',
                () => _launchUrl('https://linkedin.com/in/nazwa-djulia'),
              ),
              _buildContactItem(
                FontAwesomeIcons.whatsapp,
                'WhatsApp',
                '081380429352',
                () => _launchUrl('https://wa.me/6281380429352'),
              ),
            ],
          ),
          const SizedBox(height: 60),
          ElevatedButton.icon(
            onPressed: () {
              // Placeholder for resume download or view
              _launchUrl('https://linkedin.com/in/nazwa-djulia');
            },
            icon: const Icon(Icons.download),
            label: const Text('Download Resume PDF'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(
    IconData icon,
    String title,
    String value,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.background,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.primary.withOpacity(0.5)),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Icon(icon, color: AppColors.primary, size: 30),
            ),
            const SizedBox(height: 15),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              value,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
