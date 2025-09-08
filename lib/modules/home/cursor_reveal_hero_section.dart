import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:polymorphism/core/constant.dart';
import 'package:polymorphism/core/theme/app_theme.dart';
import 'package:polymorphism/shared/animations/scroll_reveal.dart';

class CursorRevealHeroSection extends StatefulWidget {
  const CursorRevealHeroSection({super.key, this.onExplorePressed});

  final VoidCallback? onExplorePressed;

  @override
  State<CursorRevealHeroSection> createState() => _CursorRevealHeroSectionState();
}

class _CursorRevealHeroSectionState extends State<CursorRevealHeroSection> {
  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Background.png'),
            fit: BoxFit.cover,
            onError: (exception, stackTrace) {
              // Handle image loading error
            },
          ),
        ),
        child: Container(
          // Dark overlay to ensure text readability
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0D1117).withValues(alpha: 0.2),
                Color(0xFF0D1117).withValues(alpha: 0.7),
              ],
            ),
          ),
          child: _buildContentOverlay(context),
        ),
      );
    },
  );

  Widget _buildContentOverlay(BuildContext context) => Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(
      vertical: verticalPadding(context), 
      horizontal: horizontalPadding(context)
    ),
    child: kIsWeb && MediaQuery.of(context).size.width < 800
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight(context) * .1),
                    ScrollReveal(
                      child: Column(
                        children: [
                          Text(
                            'ADVANCING AI',
                            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w900,
                              fontSize: _getResponsiveFontSize(context, 56),
                              letterSpacing: 4,
                              height: 1.1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'THROUGH RESEARCH & REAL-WORLD IMPACT.',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w300,
                              fontSize: _getResponsiveFontSize(context, 42),
                              letterSpacing: 2,
                              height: 1.2,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: verticalPadding(context)),

                    ScrollReveal(
                      delay: const Duration(milliseconds: 200),
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 600),
                        child: Text(
                          'I leverage AI to solve real-world problems for people.',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.textPrimary.withValues(alpha: 0.8),
                            fontSize: _getResponsiveFontSize(context, 18),
                            height: 1.6,
                            letterSpacing: 0.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: verticalPadding(context)),
              ScrollReveal(
                delay: const Duration(milliseconds: 800),
                child: Column(
                  children: [
                    Text(
                      'Scroll to explore',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textPrimary.withValues(alpha: 0.6),
                        fontSize: 12,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 1,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColors.accent, AppColors.accent.withValues(alpha: 0)],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight(context) * .2),
                    ScrollReveal(
                      child: Column(
                        children: [
                          Text(
                            'I BUILD INTELLIGENT SYSTEMS',
                            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w900,
                              fontSize: _getResponsiveFontSize(context, 56),
                              letterSpacing: 4,
                              height: 1.1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'THAT SOLVE MEANINGFUL PROBLEMS.',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w300,
                              fontSize: _getResponsiveFontSize(context, 42),
                              letterSpacing: 2,
                              height: 1.2,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: verticalPadding(context)),
                  ],
                ),
              ),
              if (kIsWeb && MediaQuery.of(context).size.width > 800)
                SizedBox(
                  width: screenWidth(context) - verticalPadding(context) * 2,
                  child: ScrollReveal(
                    delay: const Duration(milliseconds: 800),
                    child: Column(
                      children: [
                        Text(
                          'Scroll to explore',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textPrimary.withValues(alpha: 0.6),
                            fontSize: 12,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          width: 1,
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [AppColors.accent, AppColors.accent.withValues(alpha: 0)],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.accent.withValues(alpha: 0),
                      AppColors.accent.withValues(alpha: 0.3),
                      AppColors.accent.withValues(alpha: 0),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: screenWidth(context) - horizontalPadding(context) * 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ScrollReveal(
                      delay: const Duration(milliseconds: 300),
                      child: SizedBox(
                        width: screenWidth(context) * .15,
                        child: Text(
                          'AI Researcher & Engineer',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.textPrimary.withValues(alpha: 0.8),
                            fontSize: _getResponsiveFontSize(context, 18),
                            height: 1.6,
                            letterSpacing: 0.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    ScrollReveal(
                      delay: const Duration(milliseconds: 200),
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 600),
                        child: Text(
                          'I create AI systems that amplify human capability and drive measurable impact',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.textPrimary.withValues(alpha: 0.8),
                            fontSize: _getResponsiveFontSize(context, 18),
                            height: 1.6,
                            letterSpacing: 0.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    ScrollReveal(
                      delay: const Duration(milliseconds: 300),
                      child: SizedBox(
                        width: screenWidth(context) * .15,
                        child: Text(
                          'Research-Driven Innovation',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.textPrimary.withValues(alpha: 0.8),
                            fontSize: _getResponsiveFontSize(context, 18),
                            height: 1.6,
                            letterSpacing: 0.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
  );

  double _getResponsiveFontSize(BuildContext context, double baseFontSize) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 480) {
      return baseFontSize * 0.4;
    } else if (screenWidth < 600) {
      return baseFontSize * 0.5;
    } else if (screenWidth < 768) {
      return baseFontSize * 0.6;
    } else if (screenWidth < 1024) {
      return baseFontSize * 0.75;
    } else if (screenWidth < 1440) {
      return baseFontSize * 0.9;
    }
    return baseFontSize;
  }
}