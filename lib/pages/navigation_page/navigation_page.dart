import 'package:bitcoin_mining/pages/contracts_page/contract_page.dart';
import 'package:flutter/material.dart';

import '../earn_more_page/earn_more_page.dart';
import '../mining_page/mining_page.dart';
import '../wallet_page/wallet _page.dart';


class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MiningPage(),
    const ContractPage(),
    const WalletPage(),
    const EarnMorePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BTC Mining App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade900,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.white54,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Mining'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Contracts'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Earn More'),
        ],
      ),
    );
  }
}
