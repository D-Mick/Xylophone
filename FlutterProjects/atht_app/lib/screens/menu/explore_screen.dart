import 'package:atht_app/constants/atht_colors.dart';
import 'package:atht_app/constants/atht_strings.dart';
import 'package:atht_app/utils/styles.dart';
import 'package:atht_app/widgets/swipe_card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  SwiperController swiperController = SwiperController();
  ValueNotifier<int> activeIndex = ValueNotifier(0);

  List<Widget> pages = [
    SwipeCard(assetFile: "assets/images/Prayer.jpg",),
    SwipeCard(assetFile: "assets/images/Me.jpg",),
    SwipeCard(assetFile: "assets/images/Prayer.jpg",),
    SwipeCard(assetFile: "assets/images/Me.jpg",),
    SwipeCard(assetFile: "assets/images/Prayer.jpg",),
    SwipeCard(assetFile: "assets/images/Me.jpg",),
    SwipeCard(assetFile: "assets/images/Prayer.jpg",),
    SwipeCard(assetFile: "assets/images/Me.jpg",),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: AthtColors.colorHintText,size: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.notifications, color: AthtColors.colorHintText,size: 30,),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AthtStrings.explore,
                    style: textStyle(
                        color: AthtColors.colorBlack,
                        fontFamily: 'Poppins-Regular',
                        weight: 7,
                        size: 35
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          color: AthtColors.colorBlack,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(Icons.search, color: AthtColors.colorWhite, size: 30,),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          color: AthtColors.colorWhite,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(Icons.filter_list_sharp, color: AthtColors.colorHintText, size: 30,),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            ValueListenableBuilder<int>(
              valueListenable: activeIndex,
              builder: (_, _activeIndex, __){
                return Swiper(
                  layout: SwiperLayout.TINDER,
                  itemCount: pages.length,
                  controller: swiperController,
                  viewportFraction: 0.5,
                  scale: 1,
                  onIndexChanged: (value){
                   activeIndex.value = value;
                  },
                  itemBuilder: (context, index) {
                    double delta = ((index - _activeIndex) % pages.length) * 10;
                    return Transform.translate(
                        offset: Offset(delta ,-delta),
                        child: GestureDetector(
                            onTap: (){
                              print(swiperController.index);
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                                child: pages[index])));
                  },
                  itemWidth: MediaQuery.of(context).size.width,
                  itemHeight: 500.0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
