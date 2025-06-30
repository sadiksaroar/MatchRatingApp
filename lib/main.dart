import 'package:flutter/material.dart';

void main() => runApp(const MatchRatingApp());

class MatchRatingApp extends StatelessWidget {
  const MatchRatingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MatchInputScreen(),
    );
  }
}

class MatchInputScreen extends StatelessWidget {
  const MatchInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final players = [
      {'name': 'Stankovic', 'rating': '6'},
      {'name': 'Mukudi', 'rating': '7'},
      {'name': 'Vida', 'rating': '6'},
      {'name': 'Rota', 'rating': '5'},
      {'name': 'Gacinovic', 'rating': '7'},
      {'name': 'Szymanski', 'rating': '6'},
      {'name': 'Jonsson', 'rating': '6'},
      {'name': 'Amrabat', 'rating': ''},
      {'name': 'Zuber', 'rating': ''},
      {'name': 'Pineda', 'rating': ''},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Input & Player Ratings'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'CHAMPIONS LEAGUE - AEK vs BARCA\n1 - 2 · 17/05/2024',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.sports_soccer),
                const SizedBox(width: 8),
                const Text('Sidibe'),
                const Spacer(),
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('2'),
                )
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: players.length,
                itemBuilder: (context, index) {
                  final player = players[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      children: [
                        Expanded(child: Text(player['name']!)),
                        Container(
                          width: 40,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(player['rating']!),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Text('TEAM RATE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        SizedBox(height: 8),
                        Text('6,4',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade700,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('HISTORY'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade700,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('SUBMIT'),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
