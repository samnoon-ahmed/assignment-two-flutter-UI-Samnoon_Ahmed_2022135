import 'package:flutter/material.dart';

class ProfileWithTabs extends StatelessWidget {
  const ProfileWithTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6fb),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top welcome text
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome back,",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      "SAMNOON AHMED",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Big avatar
              const CircleAvatar(
                radius: 36,
                backgroundColor: Colors.indigo,
                child: Text(
                  "SA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Name card
              _InfoCard(
                label: "Name",
                value: "SAMNOON AHMED",
              ),

              const SizedBox(height: 12),

              // Student ID card
              _InfoCard(
                label: "Student ID",
                value: "2022135",
              ),

              const SizedBox(height: 12),

              // Email card
              _InfoCard(
                label: "Email",
                value: "2022135@iub.edu.bd",
              ),

              const SizedBox(height: 12),

              // Bio / Story card
              const _InfoCard(
                label: "Bio / Story",
                value:
                "I am a student of Independent University, Bangladesh",
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String label;
  final String value;
  final int maxLines;

  const _InfoCard({
    required this.label,
    required this.value,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}