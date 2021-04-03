// Package Name : top.latest.birthday.wishes.shayari.quotes.messages.images.gif.videos.creator
import 'dart:async';
import 'dart:io';
import 'widgets/CustomBannerWidget.dart';
import 'widgets/CustomBannerWidget4.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utils/SizeConfig.dart';
import 'AboutUs.dart';
import 'GifsImages.dart';
import 'ImagesList.dart';
import 'MemeGenerator.dart';
import 'MessagesList.dart';
import 'MyDrawer.dart';
import 'NativeAdContainer.dart';
import 'ShayariList.dart';
import 'widgets/CustomBannerWidget2.dart';
import 'widgets/CustomFullCard.dart';
import 'widgets/CustomSubHeadingWidget.dart';

// Height = 8.96
// Width = 4.14

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

const String testDevice = 'c835aea0489176f272e2d174b8d921ca';
// const String testDevice = 'testDeviceId';

class _HomePageState extends State<HomePage> {
  static final facebookAppEvents = FacebookAppEvents();
  String interstitialTag = "";

// Native Ad Open
  static String _adUnitID = NativeAd.testAdUnitId;

  final _nativeAdController = NativeAdmobController();
  double _height = 0;

  StreamSubscription _subscription;

//Native Ad Close

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    //keywords: Keywords.adsKeywords,
    //contentUrl: 'http://foo.com/bar.html',
    childDirected: false,
    nonPersonalizedAds: true,
  );

  InterstitialAd _interstitialAd;

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event $event");
        if (event == MobileAdEvent.closed) {
          _interstitialAd = createInterstitialAd()..load();

          if (interstitialTag != null) {
            switch (interstitialTag) {
              case "message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => MessagesList()));
                break;
              case "gif":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => GifsImages()));
                break;

              case "image":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ImagesList()));
                break;

              case "shayari":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ShayariList()));
                break;

              case "meme":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => MemeGenerator()));
                break;

              case "about":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => AboutUs()));
                break;
              default:
            }
          }
        } else if (event == MobileAdEvent.failedToLoad) {
          if (interstitialTag != null) {
            switch (interstitialTag) {
              case "message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => MessagesList()));
                break;
              case "gif":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => GifsImages()));
                break;

              case "image":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ImagesList()));
                break;

              case "shayari":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ShayariList()));
                break;

              case "meme":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => MemeGenerator()));
                break;

              case "about":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => AboutUs()));
                break;
              default:
            }
          }
        } else {
          print(event.toString());
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);

    _interstitialAd?.dispose();
    _interstitialAd = createInterstitialAd()..load();

    //Native Ad
    _subscription = _nativeAdController.stateChanged.listen(_onStateChanged);
    //
  }

  @override
  void dispose() {
    _interstitialAd?.dispose();
    //Native Ad
    _subscription.cancel();
    _nativeAdController.dispose();
    super.dispose();
  }

  void _onStateChanged(AdLoadState state) {
    switch (state) {
      case AdLoadState.loading:
        setState(() {
          _height = 0;
        });
        break;

      case AdLoadState.loadCompleted:
        setState(() {
          _height = 36.83 * SizeConfig.heightMultiplier;
        });
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            CustomHeader1(
              headerText: "Eid Al Adha Mubarak, User",
              imagePath:
                  "https://pbs.twimg.com/profile_images/1158115409993691138/wABb5ZLe_400x400.jpg",
              descriptionText:
                  "Hello, Check out the Messages, Images, Shayari, Gifs & Wish Maker below that you can send to your loved ones.",
            ),
            SizedBox(
              //8
              height: 0.90 * SizeConfig.heightMultiplier,
            ),
            Divider(),

            CustomSubHeadingWidget(title: "Do you like these..."),
            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Pick Any of These",
                  style: Theme.of(context).textTheme.headline1),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomBannerWidget2(
                      imagePath: "assets/1.png",
                      title: "Messages of Eid",
                      ontap: () {
                        print("Messages Clicked");
                        interstitialTag = "message";
                        facebookAppEvents.logEvent(
                          name: "Message List",
                          parameters: {
                            'button_id': 'message_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MessagesList()));
                      }),
                  CustomBannerWidget2(
                      imagePath: "assets/2.png",
                      title: "Images of Eid",
                      ontap: () {
                        print("Images Clicked");
                        interstitialTag = "image";
                        facebookAppEvents.logEvent(
                          name: "Image List",
                          parameters: {
                            'button_id': 'Image_button',
                          },
                        );

                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ImagesList()));
                      }),
                ],
              ),
            ),

            Divider(),

            NativeAdContainer(
                height: _height,
                adUnitID: _adUnitID,
                nativeAdController: _nativeAdController),

            Divider(),

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomBannerWidget2(
                      imagePath: "assets/3.png",
                      title: "Shayari of Eid",
                      ontap: () {
                        print("Shayari Clicked");
                        interstitialTag = "shayari";
                        facebookAppEvents.logEvent(
                          name: "Shayari List",
                          parameters: {
                            'button_id': 'Shayari_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ShayariList()));
                      }),
                  CustomBannerWidget2(
                      imagePath: "assets/4.gif",
                      title: "Gif Images of Eid",
                      ontap: () {
                        print("Gifs Clicked");
                        interstitialTag = "gif";
                        facebookAppEvents.logEvent(
                          name: "GIF List",
                          parameters: {
                            'button_id': 'gif_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    GifsImages()));
                      }),
                ],
              ),
            ),

            Divider(),

            // Wish Creator
            Padding(
              //16.0
              padding: EdgeInsets.all(3 * SizeConfig.widthMultiplier),
              child: CustomBannerWidget(
                  size: MediaQuery.of(context).size,
                  imagePath:
                      "http://www.andiwiniosapps.in/bakri_eid/bakri_eid_images/53.jpg",
                  buttonText: "Create",
                  topText: "Generate Greetings for",
                  middleText: "Eid Al Adha Celebration",
                  bottomText: "Share With Your Freinds & Family",
                  ontap: () {
                    print("Meme Clicked");
                    interstitialTag = "meme";
                    facebookAppEvents.logEvent(
                      name: "Meme Generator",
                      parameters: {
                        'button_id': 'meme_button',
                      },
                    );
                    _interstitialAd.isLoaded() != null
                        ? _interstitialAd?.show()
                        : Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MemeGenerator()));
                  }),
            ),

            Divider(),

            CustomSubHeadingWidget(title: "Images of Eid"),
            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Gif Images",
                  style: Theme.of(context).textTheme.headline1),
            ),

            // JPG Section

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: InkWell(
                child: Container(
                  //color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Column 1:
                      Column(
                        children: <Widget>[
                          // Column 1 item 1:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://www.andiwiniosapps.in/bakri_eid/bakri_eid_gifs/18.gif",
                              headingText: "Eid Chand Mubarak Shayari",
                              bodyText:
                                  "Socha Kisi Apne Se Baat KarunApne Kisi Khaas Ko Yaad KarunKiya Jo Faisla Eid Mubarak Kehne KaDil Ne Kaha Kyun Na Aapseshuruwat Karun EID MUBARAK"),
                          SizedBox(height: SizeConfig.height(8)),
                          // Column 1 item 2:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://www.andiwiniosapps.in/bakri_eid/bakri_eid_gifs/31.gif",
                              headingText: "Eid Mubarak Messages",
                              bodyText:
                                  "Eid-ul-Adha is the day of sacrifice, bliss, rejoice, and commitment to Allah swt’s orders. Happy Eid Al- Adha!"),
                        ],
                      ),
                      // Column2:
                      Column(
                        children: <Widget>[
                          // Column 2 item 1:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://www.andiwiniosapps.in/bakri_eid/bakri_eid_gifs/5.gif",
                              headingText: "Quotes for Eid Al Adha",
                              bodyText:
                                  "Hawa Ko Khusbo MUBARAK, Fiza Ko Mausam MUBARAK, Dilon Ko Pyar MUBARAK, Apko Humari Taraf Se Eid Mubarak!"),
                          SizedBox(height: SizeConfig.height(8)),
                          // Column 1 item 2:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://www.andiwiniosapps.in/bakri_eid/bakri_eid_gifs/40.gif",
                              headingText: "Animated Gifs for Eid Al Fitr",
                              bodyText:
                                  "जिंदगी का हर पल खुशियों से कम न हो,\nआप का हर दिन ईद के दिन से कम न हो,\nऐसा ईद का दिन आपको हमेशा नसीब हो,\nजिसमे कोई दुःख और गम न हो\nआपको और आपके परिवार को ईद मुबारक…"),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  print("Gifs Clicked");
                  interstitialTag = "gif";
                  facebookAppEvents.logEvent(
                    name: "GIF List",
                    parameters: {
                      'button_id': 'gif_button',
                    },
                  );
                  _interstitialAd.isLoaded() != null
                      ? _interstitialAd?.show()
                      : Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => GifsImages()));
                },
              ),
            ),

            Divider(),

            NativeAdContainer(
                height: _height,
                adUnitID: _adUnitID,
                nativeAdController: _nativeAdController),
                
            

            // JPG Section
            Divider(),
            CustomSubHeadingWidget(title: "Rakhi Shop Game"),
            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Play Now!!",
                  style: Theme.of(context).textTheme.headline1),
            ),

            CustomFullCard(
              size: MediaQuery.of(context).size,
              imageUrl: "assets/rakhi_game.jpeg",
              ontap: () {
                if (Platform.isAndroid) {
                  // Android-specific code
                  print("More Button Clicked");
                  launch(
                      "https://play.google.com/store/apps/developer?id=Festival+Messages+SMS");
                } else if (Platform.isIOS) {
                  // iOS-specific code
                  print("More Button Clicked");
                  launch("https://apps.apple.com/us/app/-/id1434054710");

                  facebookAppEvents.logEvent(
                    name: "Play Rakshabandhan Game",
                    parameters: {
                      'clicked_on_play_rakshabandhan_game': 'Yes',
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

class CustomHeader1 extends StatelessWidget {
  const CustomHeader1({
    Key key,
    this.headerText,
    this.imagePath,
    this.descriptionText,
  }) : super(key: key);

  final String headerText, imagePath, descriptionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 3 * SizeConfig.widthMultiplier,
        bottom: 10 * SizeConfig.widthMultiplier,
        left: 10 * SizeConfig.widthMultiplier,
        right: 10 * SizeConfig.widthMultiplier,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryVariant,
        borderRadius: BorderRadius.only(
          //30
          bottomLeft: Radius.circular(MediaQuery.of(context).size.height),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    headerText,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    width: 1.93 * SizeConfig.widthMultiplier,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagePath),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          Text(
            descriptionText,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
