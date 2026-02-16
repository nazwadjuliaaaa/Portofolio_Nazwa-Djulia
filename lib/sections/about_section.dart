import 'package:flutter/material.dart';
import '../constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: isDesktop ? 100 : 20,
      ),
      color: AppColors.surface,
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'About Me',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Container(
                  height: 1,
                  color: AppColors.primary.withOpacity(0.3),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildAboutText()),
                    const SizedBox(width: 60),
                    _buildAboutImage(),
                  ],
                )
              : Column(
                  children: [
                    _buildAboutImage(),
                    const SizedBox(height: 40),
                    _buildAboutText(),
                  ],
                ),
        ],
      ),
    );
  }

  Widget _buildAboutText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'I am an Informatics student at Al-Azhar Indonesia University with a GPA of 3.59/4.00. My main focus is on UI/UX design, data processing, and application performance analysis.',
          style: TextStyle(
            color: AppColors.textSecondary,
            fontSize: 18,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'I have a strong passion for learning to continuously improve my technical and professional skills. My experience in developing websites and applications always prioritizes a structured and user-oriented approach.',
          style: TextStyle(
            color: AppColors.textSecondary,
            fontSize: 18,
            height: 1.6,
          ),
        ),
      ],
    );
  }

  Widget _buildAboutImage() {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary, width: 2),
        image: const DecorationImage(
          image: AssetImage('assets/profile.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
