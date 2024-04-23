import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: 'images/maninjau_lake.jpg'),
              TitleSection(
                name: 'Lake Maninjau', 
                location: 'West Sumatra, Indonesia'),
                ButtonSection(),
                TextSection(
                  description: 
                  'Lake Maninjau has an area of 99.5 square kilometres (38.4 sq mi),' 
                  'being approximately 16 kilometres (9.9 mi) long and 7 kilometres '
                  '(4.3 mi) wide. The average depth is 105 metres (344 ft), with a '
                  'maximum depth of 165 metres (541 ft). The natural outlet for excess' 
                  'water is the Antokan river, located on the west side of the lake.' 
                  'It is the only lake in Sumatra which has a natural outlet to the' 
                  'west coast. Since 1983, this water has been used to generate'
                  'hydroelectric power for West Sumatra, generated around 68 MW at '
                  'maximum load.'
                  'Most of the people who live around Lake Maninjau are ethnically' 
                  'Minangkabau. Villages on the shores of the lake include Maninjau' 
                  'and Bayur.'
                  ),
            ],
          ),
        ),
      )
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      color: Colors.grey[500]
                    ),
                  )
              ],
            )
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            const Text('87')
        ],
      ),
      );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color, 
            icon: Icons.call, 
            label: 'CALL'),
          ButtonWithText(
            color: color, 
            icon: Icons.near_me, 
            label: 'ROUTE'),
          ButtonWithText(
            color: color, 
            icon: Icons.share, 
            label: 'SHARE')
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          )),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,);
  }
}