import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: AppBarSection(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35.0, bottom: 25),
              child: Text(
                "How to make french\ntoast",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            VideoSection(
                bgImg: "assets/images/pizza_dish.png",
                frImg: "assets/images/play_button.png"),
          ],
        ));
  }
}

class AppBarSection extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: IconButton(
          onPressed: () {},
          icon:
              Transform.scale(scale: 1.5, child: const Icon(Icons.arrow_back)),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: IconButton(
            onPressed: () {},
            icon: Transform.scale(
                scale: 1.5, child: const Icon(Icons.more_horiz)),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class VideoSection extends StatelessWidget {
  const VideoSection({super.key, required this.bgImg, required this.frImg});

  final String bgImg;
  final String frImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200, // Set your desired height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18), // Rounded corners
        color: Colors.white, // Optional background color
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                bgImg,
              ),
            ),
          ),
          Image.asset(frImg, fit: BoxFit.cover),
        ],
      ),
    );
  }
}
