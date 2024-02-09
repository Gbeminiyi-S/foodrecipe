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
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            VideoSection(
                bgImg: "assets/images/pizza_dish.png",
                frImg: "assets/images/play_button.png"),
            RatingSection(),
            UserSection(),
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
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
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

class RatingSection extends StatelessWidget {
  const RatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(30.0),
        child: Row(
          children: [
            Icon(Icons.star, color: Colors.orange),
            SizedBox(width: 10), // Add equal spacing between items
            Text(
              "4,5",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 10), // Add equal spacing between items
            Text(
              "(300 Reviews)",
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18),
            ),
          ],
        ));
  }
}

class UserSection extends StatelessWidget {
  const UserSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Row(
        children: [
          Image.asset("assets/images/model.png"),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Roberta Anny",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Image.asset("assets/images/location.png"),
                    const SizedBox(width: 8),
                    const Text(
                      "Bali, Indonesia",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red.shade500,
            ),
            child: const Center(
              child: Text(
                "Follow",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
