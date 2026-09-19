import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onProjectTap;
  const HeroSection({super.key, required this.onProjectTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 900;

    return Container(
      height: size.height,
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.background),
      child: Stack(
        children: [
          // Background Glow effect
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary.withOpacity(0.1),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: isDesktop ? 100 : 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: isDesktop
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hello, I am',
                    style: TextStyle(
                      color: AppColors.secondary,
                      fontSize: isDesktop ? 24 : 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Nazwa Djulia',
                    style: GoogleFonts.outfit(
                      color: AppColors.textPrimary,
                      fontSize: isDesktop ? 80 : 48,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1.5,
                    ),
                    textAlign: isDesktop ? TextAlign.left : TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.primary.withOpacity(0.5),
                      ),
                    ),
                    child: Text(
                      'Informatics Student | UI/UX Enthusiast',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: isDesktop ? 18 : 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Passionately creating user-oriented digital experiences\nwith a focus on performance and usability analysis.',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: isDesktop ? 20 : 16,
                      height: 1.5,
                    ),
                    textAlign: isDesktop ? TextAlign.left : TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: onProjectTap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'View Projects',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
