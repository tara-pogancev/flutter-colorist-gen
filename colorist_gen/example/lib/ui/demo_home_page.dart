import 'package:flutter/material.dart';

class DemoHomePage extends StatelessWidget {
  const DemoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hello, Colorist!'),
            Text(
              'Let\'s explore color palettes',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        centerTitle: false,
        actionsPadding: const EdgeInsets.all(12),
        actions: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/cat.jpg'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _DemoCard(),
          const Divider(
            height: 48,
          ),
          Text(
            'Traditional paint',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const _ArtCard(
            assetPath: 'assets/the_creation_of_adam.jpg',
            artist: 'Michelangelo',
            title: 'The Creation of Adam',
            year: 1512,
          ),
          const _ArtCard(
            assetPath: 'assets/the_lady_of_sharlott.jpg',
            artist: 'Tate Britain',
            title: 'The Lady Of Sharlott',
            year: 1888,
          ),
          const _ArtCard(
            assetPath: 'assets/girl_with_a_pearl_earring.jpg',
            artist: '	Johannes Vermeer',
            title: 'Girl with a Pearl Earring',
            year: 1665,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Main (Light)',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Main (Dark)'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Premium (Dark)',
          ),
        ],
      ),
    );
  }
}

class _DemoCard extends StatelessWidget {
  const _DemoCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primaryContainer,
            Theme.of(context).colorScheme.secondaryContainer,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage('assets/michelangelo.jpg'),
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.travel_explore),
                  label: const Text(
                    'ITALY',
                  ),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      width: 1.5,
                    ),
                    textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Michelangelo Buonarroti',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'Sculptor, painter, architect, and poet',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ArtCard extends StatelessWidget {
  const _ArtCard({required this.assetPath, required this.title, required this.artist, required this.year});

  final String assetPath;
  final String title;
  final String artist;
  final int year;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 32,
          children: [
            Expanded(
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      artist,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                    Text(
                      year.toString(),
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: SizedBox(
                width: 100,
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
