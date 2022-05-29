import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:last_project/data/dataList_Explore.dart';
import 'package:last_project/data/dataList_home.dart';



class ExploreMenu extends StatefulWidget {
  const ExploreMenu({Key? key}) : super(key: key);

  @override
  State<ExploreMenu> createState() => _ExploreMenuState();
}

class _ExploreMenuState extends State<ExploreMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300),
        child: Container(
          height: 270,
          child: Stack(
            children: [
              Positioned(
                  child: Material(
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFF69E4A5),
                  ),
                ),
              )),
              Positioned(
                top: 40,
                left: MediaQuery.of(context).size.width * 1 / 2.3,
                child: const Text(
                  "Explore",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF004421),
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Positioned(
                top: 70,
                bottom: 0,
                child: ComplicatedImageDemo(),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: lastSeenList.map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(item.image),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    )).toList(),
                  )
                )
              
              ],
            ),
          )
        ),
      ),
    );
  }
}

final List<Widget> imageSliders = dataCarousel
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item.image, fit: BoxFit.cover, width: 1000),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          item.title,
                          style:const  TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class ComplicatedImageDemo extends StatelessWidget {
  const ComplicatedImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
    );
  }
}
