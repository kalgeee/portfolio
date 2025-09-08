import 'package:flutter/material.dart';

@immutable
class CareerEvent {
  const CareerEvent({
    required this.year,
    required this.title,
    required this.description,
    required this.icon,
    this.company,
    this.location,
  });
  final int year;
  final String title;
  final String description;
  final IconData icon;
  final String? company;
  final String? location;

  static List<CareerEvent> get sampleEvents => [
    const CareerEvent(
      year: 2020,
      title: 'B.Sc. Mathematics',
      description:
          'Developed rigorous analytical thinking, statistical reasoning, and mathematical modeling skills. Mastered calculus, linear algebra, and probability theory—building the quantitative foundation for complex problem-solving.',
      icon: Icons.code,
      company: "St. Xavier's College",
      location: 'Ahmedabad, India',
    ),
    const CareerEvent(
      year: 2022,
      title: 'Data Science Specialization',
      description:
          'Acquired data manipulation expertise with Python, pandas, and NumPy. Developed skills in statistical analysis, data visualization, and hypothesis testing—learning to extract meaningful patterns from complex datasets.',
      icon: Icons.code,
      company: 'Jain University',
      location: 'Bangalore, India',
    ),
    const CareerEvent(
      year: 2023,
      title: 'Machine Learning Deep Dive',
      description:
          'Built algorithmic thinking and model optimization skills. Gained proficiency in feature engineering, cross-validation, and performance evaluation—developing systematic approaches to pattern recognition problems.',
      icon: Icons.code,
      company: 'Stanford University',
      location: 'Online Courses',
    ),
    const CareerEvent(
      year: 2024,
      title: 'Advanced Deep Learning Courses',
      description:
          'Advanced programming skills in PyTorch and TensorFlow. Developed expertise in neural architecture design, optimization techniques, and computational thinking for complex multi-dimensional problems.',
      icon: Icons.code,
      company: 'Stanford University',
      location: 'Online Courses',
    ),
    const CareerEvent(
      year: 2024,
      title: 'Microsoft Development in an MNC',
      description:
          'Strengthened system architecture skills, database design, and user experience thinking. Developed project management capabilities and learned to translate technical solutions into business value.',
      icon: Icons.code,
      company: 'Solid Tech India Computer Services Private Limited',
      location: 'Ahmedabad, India',
    ),
    const CareerEvent(
      year: 2025,
      title: 'M.Sc. Artificial Intelligence',
      description:
          'Refined research methodology, critical thinking, and experimental design skills. Enhanced mathematical sophistication in probabilistic reasoning and multi-modal information processing.',
      icon: Icons.code,
      company: "King's College London",
      location: 'London, United Kingdom',
    ),
    const CareerEvent(
      year: 2025,
      title: 'Research Breakthrough: Uncertainty-Aware Multimodal Emotion Recognition',
      description:
          'Synthesized years of mathematical, analytical, and technical skills to pioneer novel uncertainty quantification methods—demonstrating ability to tackle unprecedented problems with systematic rigor.',
      icon: Icons.code,
      company: "King's College London",
      location: 'London, United Kingdom',
    ),
  ];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CareerEvent &&
          runtimeType == other.runtimeType &&
          year == other.year &&
          title == other.title &&
          description == other.description &&
          icon == other.icon &&
          company == other.company &&
          location == other.location;

  @override
  int get hashCode =>
      year.hashCode ^ title.hashCode ^ description.hashCode ^ icon.hashCode ^ company.hashCode ^ location.hashCode;

  @override
  String toString() => 'CareerEvent(year: $year, title: $title, company: $company)';
}
