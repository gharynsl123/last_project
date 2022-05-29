import 'package:flutter/material.dart';

class ProfileMenu extends StatefulWidget {
  const ProfileMenu({ Key? key }) : super(key: key);

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  child: Image.network(
                    'https://cdn.wallpapersafari.com/78/25/JU9bGD.jpg',
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 220 - 155 / 2,
                  child: CircleAvatar(
                    radius: 144 / 2,
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: 220 - 146 / 2,
                  child: CircleAvatar(
                    radius: 135 / 2,
                    backgroundColor: Colors.grey.shade800,
                    backgroundImage: Image.asset(
                        'assets/images/photo.jpg').image,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250 - 92 * 2, bottom: 15),
              child: Column(
                children: const [
                  Text(
                    'Ananda Gharyn',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hai Everyone! 👋 😁',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0x0fD3D3D3),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(text: 'Followers', value: 1000),
                    Container(
                      height: 24,
                      child: const VerticalDivider(),
                    ),
                    buildButton(text: 'Following', value: 25),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Traveling the World and looking for something Interesting. Follow me to get a new awesome experience',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget buildButton({required String text, required int value}) =>
    MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 4),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$value',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
