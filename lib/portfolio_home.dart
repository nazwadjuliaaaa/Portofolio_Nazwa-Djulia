import 'package:flutter/material.dart';
import 'constants.dart';
import 'sections/hero_section.dart';
import 'sections/about_section.dart';
import 'sections/experience_section.dart';
import 'sections/project_section.dart';
import 'sections/skill_section.dart';
import 'sections/contact_section.dart';

class PortfolioHome extends StatefulWidget {
  const PortfolioHome({super.key});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  final GlobalKey _projectKey = GlobalKey();

  void _scrollToProjects() {
    Scrollable.ensureVisible(
      _projectKey.currentContext!,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(onProjectTap: _scrollToProjects),
            const AboutSection(),
            const ExperienceSection(),
            ProjectSection(key: _projectKey),
            const SkillSection(),
            const ContactSection(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      width: double.infinity,
      color: AppColors.background,
      child: Center(
        child: Text(
          '© 2025 Nazwa Djulia. Built with Flutter.',
          style: TextStyle(color: AppColors.textSecondary),
        ),
      ),
    );
  }
}
