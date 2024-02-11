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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 25),
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
              IngredentHeaderSection(),
              IngredientSection(
                  foodImage: "assets/images/food.png",
                  foodName: "Bread",
                  foodWeight: "200g"),
              IngredientSection(
                  foodImage: "assets/images/bacon.png",
                  foodName: "Eggs",
                  foodWeight: "200g"),
              IngredientSection(
                  foodImage: "assets/images/food.png",
                  foodName: "Milk",
                  foodWeight: "200g"),
            ],
          ),
        ));
  }
}

class AppBarSection extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: IconButton(
          onPressed: () {},
          icon:
              Transform.scale(scale: 1.3, child: const Icon(Icons.arrow_back)),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  width: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      bgImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Image.asset(frImg, fit: BoxFit.cover),
            ],
          ),
        ),
      ],
    );
  }
}

class RatingSection extends StatelessWidget {
  const RatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 16.0, top: 18.0, bottom: 18.0),
        child: Row(
          children: [
            Icon(Icons.star, color: Colors.orange),
            SizedBox(width: 4),
            Text(
              "4,5",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 6),
            Text(
              "(300 Reviews)",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFFA9A9A9),
              ),
            ),
          ],
        ));
  }
}

class UserSection extends StatelessWidget {
  const UserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
            child: Image.asset(
              "assets/images/model.png",
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Roberta Anny",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/location.png"),
                      const SizedBox(width: 4),
                      const Text(
                        "Bali, Indonesia",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFFA9A9A9),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFE23E3E),
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

class IngredentHeaderSection extends StatelessWidget {
  const IngredentHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20, top: 25),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Ingredients",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          Text(
            "5 items",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xFFA9A9A9),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
    ;
  }
}

class IngredientSection extends StatelessWidget {
  final String foodImage;
  final String foodName;
  final String foodWeight;

  const IngredientSection({
    super.key,
    required this.foodImage,
    required this.foodName,
    required this.foodWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 15),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFA9A9A9).withOpacity(0.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.transparent, width: 2),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(9),
                  child: Image.asset(foodImage, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  foodName,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              foodWeight,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xFFA9A9A9),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
