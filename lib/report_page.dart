import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6fb),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome back,",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const Text(
                "SAMNOON AHMED",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),

              // Top report card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Monthly Spending Report",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Total Expenses (Last 30 days)",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "\$1270.00",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Up 12% from last month",
                      style: TextStyle(fontSize: 12, color: Colors.redAccent),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Breakdown card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Spending Breakdown",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    _BreakdownRow(
                      label: "Food & Drink",
                      amount: "\$450.00 (35%)",
                      value: 0.35,
                      color: Colors.redAccent,
                    ),
                    SizedBox(height: 10),
                    _BreakdownRow(
                      label: "Shopping",
                      amount: "\$320.00 (25%)",
                      value: 0.25,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(height: 10),
                    _BreakdownRow(
                      label: "Housing",
                      amount: "\$280.00 (22%)",
                      value: 0.22,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(height: 10),
                    _BreakdownRow(
                      label: "Transport",
                      amount: "\$150.00 (12%)",
                      value: 0.12,
                      color: Colors.green,
                    ),
                    SizedBox(height: 10),
                    _BreakdownRow(
                      label: "Other",
                      amount: "\$70.00 (6%)",
                      value: 0.06,
                      color: Colors.purpleAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BreakdownRow extends StatelessWidget {
  final String label;
  final String amount;
  final double value;
  final Color color;

  const _BreakdownRow({
    required this.label,
    required this.amount,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,
                style:
                const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
            Text(amount,
                style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 8,
            color: color,
            backgroundColor: const Color(0xffeceffc),
          ),
        ),
      ],
    );
  }
}