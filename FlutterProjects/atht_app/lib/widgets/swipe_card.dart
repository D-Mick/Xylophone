import 'package:atht_app/constants/atht_colors.dart';
import 'package:atht_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwipeCard extends StatelessWidget {
  final String? assetFile;

  const SwipeCard({Key? key, this.assetFile}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          foregroundDecoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.transparent,
                              Colors.black
                            ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                            ),
                          ),
                          child: Image.asset(assetFile!, fit: BoxFit.fill,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 10),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FittedBox(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                                    decoration: BoxDecoration(
                                      color: AthtColors.colorHintText,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Center(child: Text('STEM')),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                FittedBox(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                                    decoration: BoxDecoration(
                                        color: AthtColors.colorHintText,
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Center(child: Text('SCIENCE')),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                FittedBox(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                                    decoration: BoxDecoration(
                                        color: AthtColors.colorHintText,
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    child: Center(child: Text('SPORTS')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, bottom: 10),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                                'University of Cape Town \nMasters Scholarship.',
                                style: textStyle(
                                    color: AthtColors.colorWhite,
                                    fontFamily: 'Poppins-Regular',
                                    weight: 7,
                                    size: 25
                                )
                            ),),
                        ),
                      ],
                    ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Scholarship Amount',
                            style: textStyle(
                                color: AthtColors.colorBlack,
                                fontFamily: 'Poppins-Regular',
                                weight: 5,
                                size: 20
                            ),
                        ),
                        SizedBox(height: 10,),
                        Text('\$800',
                            style: textStyle(
                                color: AthtColors.colorDarkBlue,
                                fontFamily: 'Poppins-Regular',
                                weight: 7,
                                size: 35
                            ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 95,
            right: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              child: Icon(Icons.explore, size: 40,),
            ),
          )
        ],
      )
    );
  }
}
