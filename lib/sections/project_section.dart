import 'package:flutter/material.dart';
import '../constants.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Featured Projects',
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
          const SizedBox(height: 60),
          isDesktop
              ? Row(
                  children: [
                    Expanded(
                      child: _buildProjectCard(
                        'Smart Finance AI-Based',
                        'Developed using Flutter, Github, Gemini API integrated and Supabase. Creates cash inflow/outflow analysis and strategic recommendations using AI.',
                        'Flutter • Gemini AI • Supabase',
                        Icons.analytics,
                      ),
                    ),
                    const SizedBox(width: 40),
                    Expanded(
                      child: _buildProjectCard(
                        'Website Cashier Taberu Bento',
                        'Developed using HTML, CSS, PHP, and MySQL. A system to calculate income, expenses, and raw material availability with integrated admin/owner roles.',
                        'PHP • MySQL • HTML/CSS',
                        Icons.shopping_cart,
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    _buildProjectCard(
                      'Smart Finance AI-Based',
                      'Developed using Flutter, Github, Gemini API integrated and Supabase. Creates cash inflow/outflow analysis and strategic recommendations using AI.',
                      'Flutter • Gemini AI • Supabase',
                      Icons.analytics,
                    ),
                    const SizedBox(height: 30),
                    _buildProjectCard(
                      'Website Cashier Taberu Bento',
                      'Developed using HTML, CSS, PHP, and MySQL. A system to calculate income, expenses, and raw material availability with integrated admin/owner roles.',
                      'PHP • MySQL • HTML/CSS',
                      Icons.shopping_cart,
                    ),
                  ],
                ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(
    String title,
    String desc,
    String tech,
    IconData icon,
  ) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.primary, size: 40),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            desc,
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 16,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 25),
          Text(
            tech,
            style: const TextStyle(
              color: AppColors.accent,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
