import 'package:flutter/material.dart';
import '../constants.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: isDesktop ? 100 : 20,
      ),
      color: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Experience & Organizations',
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
          _buildTimelineItem(
            'Members of the Voting Organizing Group (KPPS)',
            'KPU',
            'Jan 2024 - Feb 2024',
            [
              'Improved communication and coordination skills in serving people from diverse backgrounds.',
              'Cultivated discipline, accuracy, and responsibility in carrying out procedures and managing sensitive documents.',
              'Gained experience working in a formal environment with strict timeframes.',
            ],
          ),
          const SizedBox(height: 40),
          _buildTimelineItem(
            'Ambassador',
            'University Al Azhar Indonesia',
            'Nov 2023 - Present',
            [
              'Acted as a liaison for prospective students, answering questions and providing university information.',
              'Shared personal experiences and insights about student life and academic programs.',
              'Collaborated with staff to improve university offerings and services.',
            ],
          ),
          const SizedBox(height: 40),
          _buildTimelineItem(
            'Public Relations and Advocacy Division',
            'HMIF UAI',
            'Oct 2024 - Present',
            [
              'Managed internal and external organization communication to build a positive image.',
              'Designed and implemented publication strategies and communication media.',
              'Gathered member aspirations as material for advocacy and organizational decision-making.',
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineItem(
    String title,
    String subtitle,
    String duration,
    List<String> points,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 2,
              height: 150,
              color: AppColors.primary.withOpacity(0.3),
            ),
          ],
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '$subtitle | $duration',
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              Column(
                children: points
                    .map(
                      (p) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '• ',
                              style: TextStyle(color: AppColors.primary),
                            ),
                            Expanded(
                              child: Text(
                                p,
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 16,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
