import 'package:flutter/material.dart';

class MiningPage extends StatelessWidget {
  const MiningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Mining'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.green.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.card_giftcard, color: Colors.orange),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Welcome Offer', style: TextStyle(color: Colors.white)),
                          Text(
                            '-25% off limited time',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '00:03:42:46 remaining',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Open'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      '0.0000000000000000 btc',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  const Icon(Icons.attach_money, color: Colors.orange),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildMiningPlan(
                    context,
                    duration: '8 Hours',
                    hashrate: '4.15 Gh/s',
                    price: '\$21.99 / Month',
                    speed: '535.03 Gh/s',
                    isInitial: true,
                  ),
                  const SizedBox(height: 8),
                  _buildMiningPlan(
                    context,
                    duration: '24 Hours',
                    hashrate: '6.64 Gh/s',
                    price: '\$29.99 / Month',
                    speed: '750.00 Gh/s',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    'Initial Bitcoin Mining',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
                  ),
                  Text(
                    '535.03 Gh/s',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Subscribe'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget _buildMiningPlan(BuildContext context,
      {required String duration, required String hashrate, required String price, required String speed, bool isInitial = false}) {
    return Card(
      color: isInitial ? Colors.deepPurple : Colors.grey.shade800,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(duration, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white)),
                    Text(hashrate, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white)),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: isInitial ? Colors.deepPurple : Colors.grey),
                  child: Text(isInitial ? 'Claim contract' : 'Show Offers'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(price, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
            Text(speed, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
