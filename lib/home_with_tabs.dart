import 'package:flutter/material.dart';

class HomeWithTabs extends StatelessWidget {
  const HomeWithTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6fb),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top welcome row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.indigo,
                    child: Text(
                      "SA",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Balance card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xff4b5bfd),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Total Balance",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "\$8,945.32",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Savings: \$6,500",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                        Text(
                          "Last 30 days: +\$300",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Quick actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  _QuickAction(icon: Icons.swap_horiz, label: "Transfer"),
                  _QuickAction(icon: Icons.receipt_long, label: "Pay Bills"),
                  _QuickAction(icon: Icons.show_chart, label: "Invest"),
                ],
              ),

              const SizedBox(height: 16),

              // Recent transactions title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // Transactions list
              Expanded(
                child: ListView(
                  children: const [
                    _TransactionTile(
                      title: "Netflix Subscription",
                      subtitle: "Entertainment · Today",
                      amount: "-\$19.99",
                      isNegative: true,
                    ),
                    _TransactionTile(
                      title: "Coffee Shop",
                      subtitle: "Food & Drink · Today",
                      amount: "-\$4.50",
                      isNegative: true,
                    ),
                    _TransactionTile(
                      title: "Salary Deposit",
                      subtitle: "Income · Yesterday",
                      amount: "+\$3500.00",
                      isNegative: false,
                    ),
                    _TransactionTile(
                      title: "Grocery Store",
                      subtitle: "Shopping · Yesterday",
                      amount: "-\$55.80",
                      isNegative: true,
                    ),
                    _TransactionTile(
                      title: "Amazon Purchase",
                      subtitle: "Shopping · 2 days ago",
                      amount: "-\$120.45",
                      isNegative: true,
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

class _QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;
  const _QuickAction({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Icon(icon, color: Colors.indigo),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _TransactionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final bool isNegative;

  const _TransactionTile({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.isNegative,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      leading: const CircleAvatar(
        backgroundColor: Color(0xffeceffc),
        child: Icon(Icons.account_balance_wallet, color: Colors.indigo),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 12),
      ),
      trailing: Text(
        amount,
        style: TextStyle(
          color: isNegative ? Colors.red : Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}