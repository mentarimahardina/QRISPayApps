// import 'package:QRISPayApps/Library/carousel_pro/carousel_pro.dart';
import 'package:QRISPayApps/UI/LoginOrSignup/Login.dart';
import 'package:QRISPayApps/main.dart';
import 'package:flutter/material.dart';
// import 'package:QRISPayApps/ListItem/HomeGridItemRecomended.dart';
// import 'package:QRISPayApps/UI/HomeUIComponent/AppbarGradient.dart';
import 'package:QRISPayApps/Library/countdown/countdown.dart';
// import 'package:QRISPayApps/UI/HomeUIComponent/CategoryDetail.dart';
// import 'package:QRISPayApps/UI/HomeUIComponent/DetailProduct.dart';
// import 'package:QRISPayApps/UI/HomeUIComponent/FlashSale.dart';
// import 'package:QRISPayApps/UI/HomeUIComponent/MenuDetail.dart';
// import 'package:QRISPayApps/UI/HomeUIComponent/PromotionDetail.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

/// Component all widget in home
class _MenuState extends State<Menu> with TickerProviderStateMixin {
  /// Declare class GridItem from HomeGridItemReoomended.dart in folder ListItem
  bool isStarted = false;
  var hourssub, minutesub, secondsub;

  /// CountDown for timer
  CountDown hours, minutes, seconds;
  int hourstime, minute, second = 0;

  /// Set for StartStopPress CountDown
  onStartStopPress() {
    if (this.secondsub == null) {
      secondsub = seconds.stream.listen(null);
      secondsub.onData((Duration d) {
        print(d);
        setState(() {
          second = d.inSeconds;
        });
      });
    }
    if (this.minutesub == null) {
      minutesub = minutes.stream.listen(null);
      minutesub.onData((Duration d) {
        print(d);
        setState(() {
          minute = d.inMinutes;
        });
      });
    }
    if (this.hourssub == null) {
      hourssub = hours.stream.listen(null);
      hourssub.onData((Duration d) {
        print(d);
        setState(() {
          hourstime = d.inHours;
        });
      });
    }
  }

  /// To set duration initState auto start if FlashSale Layout open
  @override
  void initState() {
    hours = new CountDown(new Duration(hours: 24));
    minutes = new CountDown(new Duration(hours: 1));
    seconds = new CountDown(new Duration(minutes: 1));

    onStartStopPress();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double size = mediaQueryData.size.height;

    /// Declare device Size
    var deviceSize = MediaQuery.of(context).size;

    /// CategoryIcon Component
    var categoryIcon = Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 20.0),
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 0.0),
            child: Text(
              "Menu",
              style: TextStyle(
                  fontSize: 13.5,
                  fontFamily: "Sans",
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
        ],
      ),
    );

    /// ListView a WeekPromotion Component
    var PromoHorizontalList = Container(
      color: Colors.white,
      height: 230.0,
      padding: EdgeInsets.only(bottom: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 3.0),
              child: Text(
                "Week Promotion",
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "Sans",
                    fontWeight: FontWeight.w700),
              )),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20.0)),
              ],
            ),
          ),
        ],
      ),
    );

    /// FlashSale component
    var FlashSell = Container(
      height: 390.0,
      decoration: BoxDecoration(
        /// To set Gradient in flashSale background
        gradient: LinearGradient(colors: [
          Color(0xFF7F7FD5).withOpacity(0.8),
          Color(0xFF86A8E7),
          Color(0xFF91EAE4)
        ]),
      ),

      /// To set FlashSale Scrolling horizontal
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: mediaQueryData.padding.left + 20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/img/flashsaleicon.png",
                    height: deviceSize.height * 0.087,
                  ),
                  Text(
                    "Flash",
                    style: TextStyle(
                      fontFamily: "Popins",
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Sale",
                    style: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 28.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: mediaQueryData.padding.top + 30),
                  ),
                  Text(
                    "End sale in :",
                    style: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.0),
                  ),

                  /// Get a countDown variable
                  Text(
                    hourstime.toString() +
                        " : " +
                        minute.toString() +
                        " : " +
                        second.toString(),
                    style: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 19.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 40.0)),

          /// Get a component flashSaleItem class
          flashSaleItem(
            image: "assets/imgItem/mackbook.jpg",
            title: "Apple Macbook Pro 13 with Touch Bar",
            normalprice: "\$ 2,020",
            discountprice: "\$ 1,300",
            ratingvalue: "(56)",
            place: "United Kingdom",
            stock: "9 Available",
            colorLine: 0xFFFFA500,
            widthLine: 50.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          flashSaleItem(
            image: "assets/imgItem/flashsale2.jpg",
            title: "7 Level Karina Dress Sweet Pesta",
            normalprice: "\$ 14",
            discountprice: "\$ 10",
            ratingvalue: "(16)",
            place: "United Kingdom",
            stock: "24 Available",
            colorLine: 0xFF52B640,
            widthLine: 100.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          flashSaleItem(
            image: "assets/imgItem/flashsale3.jpg",
            title: "Samsung Galaxy Note 9 8GB - 512GB",
            normalprice: "\$ 1,000",
            discountprice: "\$ 950",
            ratingvalue: "(20)",
            place: "United Kingdom",
            stock: "14 Available",
            colorLine: 0xFF52B640,
            widthLine: 90.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          flashSaleItem(
            image: "assets/imgItem/flashsale4.jpg",
            title: "Harry Potter Spesial Edition ",
            normalprice: "\$ 25",
            discountprice: "\$ 20",
            ratingvalue: "(22)",
            place: "United Kingdom",
            stock: "5 Available",
            colorLine: 0xFFFFA500,
            widthLine: 30.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          flashSaleItem(
            image: "assets/imgItem/flashsale5.jpg",
            title: "Pro Evolution Soccer 2019 Steam Original PC Games",
            normalprice: "\$ 50",
            discountprice: "\$ 30",
            ratingvalue: "(10)",
            place: "United Kingdom",
            stock: "30 Available",
            colorLine: 0xFF52B640,
            widthLine: 100.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
        ],
      ),
    );

    /// Category Component in bottom of flash sale
    var categoryImageBottom = Container(
      height: 310.0,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              "Category",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sans"),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 15.0)),
                      CategoryItemValue(
                        image: "assets/imgItem/category2.png",
                        title: "Fashion Man",
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      CategoryItemValue(
                        image: "assets/imgItem/category1.png",
                        title: "Fashion Girl",
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 15.0)),
                    CategoryItemValue(
                      image: "assets/imgItem/category3.png",
                      title: "Smartphone",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    CategoryItemValue(
                      image: "assets/imgItem/category4.png",
                      title: "Computer",
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 15.0)),
                    CategoryItemValue(
                      image: "assets/imgItem/category5.png",
                      title: "Sport",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    CategoryItemValue(
                      image: "assets/imgItem/category6.png",
                      title: "Fashion Kids",
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 15.0)),
                    CategoryItemValue(
                      image: "assets/imgItem/category7.png",
                      title: "Health",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    CategoryItemValue(
                      image: "assets/imgItem/category8.png",
                      title: "Makeup",
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );

    ///  Grid item in bottom of Category
    var Grid = SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Recomended",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17.0,
                ),
              ),
            ),

            /// To set GridView item
          ],
        ),
      ),
    );

    return Scaffold(
      /// Use Stack to costume a appbar
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        top: mediaQueryData.padding.top + 58.5)),

                /// Call var categoryIcon
                categoryIcon,
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),

                /// Call var PromoHorizontalList
                PromoHorizontalList,

                /// Call var a FlashSell, i am sorry Typo :v
                FlashSell,
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                categoryImageBottom,
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),

                /// Call a Grid variable, this is item list in Recomended item
                Grid,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Component FlashSaleItem
class flashSaleItem extends StatelessWidget {
  final String image;
  final String title;
  final String normalprice;
  final String discountprice;
  final String ratingvalue;
  final String place;
  final String stock;
  final int colorLine;
  final double widthLine;

  flashSaleItem(
      {this.image,
      this.title,
      this.normalprice,
      this.discountprice,
      this.ratingvalue,
      this.place,
      this.stock,
      this.colorLine,
      this.widthLine});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new loginScreen(),
                    transitionsBuilder:
                        (_, Animation<double> animation, __, Widget child) {
                      return Opacity(
                        opacity: animation.value,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 850)));
              },
              child: Container(
                height: 305.0,
                width: 145.0,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 140.0,
                      width: 145.0,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 8.0, right: 3.0, top: 15.0),
                      child: Text(title,
                          style: TextStyle(
                              fontSize: 10.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Sans")),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Text(normalprice,
                          style: TextStyle(
                              fontSize: 10.5,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Sans")),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Text(discountprice,
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF7F7FD5),
                              fontWeight: FontWeight.w800,
                              fontFamily: "Sans")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_half,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Text(
                            ratingvalue,
                            style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Sans",
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 11.0,
                            color: Colors.black38,
                          ),
                          Text(
                            place,
                            style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Sans",
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Text(
                        stock,
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Sans",
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0, left: 10.0),
                      child: Container(
                        height: 5.0,
                        width: widthLine,
                        decoration: BoxDecoration(
                            color: Color(colorLine),
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                            shape: BoxShape.rectangle),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

/// Component category item bellow FlashSale
class CategoryItemValue extends StatelessWidget {
  String image, title;
  GestureTapCallback tap;

  CategoryItemValue({
    this.image,
    this.title,
    this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        height: 105.0,
        width: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.0)),
            color: Colors.black.withOpacity(0.25),
          ),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Berlin",
              fontSize: 18.5,
              letterSpacing: 0.7,
              fontWeight: FontWeight.w800,
            ),
          )),
        ),
      ),
    );
  }
}

/// Component item Menu icon bellow a ImageSlider
class CategoryIconValue extends StatelessWidget {
  String icon1, icon2, icon3, icon4, title1, title2, title3, title4;
  GestureTapCallback tap1, tap2, tap3, tap4;

  CategoryIconValue(
      {this.icon1,
      this.tap1,
      this.icon2,
      this.tap2,
      this.icon3,
      this.tap3,
      this.icon4,
      this.tap4,
      this.title1,
      this.title2,
      this.title3,
      this.title4});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: tap1,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon1,
                height: 19.2,
              ),
              Padding(padding: EdgeInsets.only(top: 7.0)),
              Text(
                title1,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: tap2,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon2,
                height: 26.2,
              ),
              Padding(padding: EdgeInsets.only(top: 0.0)),
              Text(
                title2,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: tap3,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon3,
                height: 22.2,
              ),
              Padding(padding: EdgeInsets.only(top: 4.0)),
              Text(
                title3,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: tap4,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon4,
                height: 19.2,
              ),
              Padding(padding: EdgeInsets.only(top: 7.0)),
              Text(
                title4,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
