import 'package:bakri_eid/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

class CustomBannerWidget extends StatelessWidget {
  const CustomBannerWidget({
    Key key,
    @required this.size, this.imagePath, this.topText, this.middleText, this.bottomText, this.buttonText, this.ontap,
  }) : super(key: key);

  final Size size;
  final String imagePath,topText,middleText,bottomText,buttonText;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return InkWell(
                  child: Container(
            color: Theme.of(context).colorScheme.primaryVariant,
            height: size.height * 0.35,
            width: constraints.maxWidth,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  top: 0,
                  right: 0,
                  child: Container(
                    height: constraints.maxHeight * 1,
                    width: constraints.maxWidth / 2.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imagePath),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.width(18),
                                vertical: SizeConfig.height(10)),
                            color: Colors.black,
                            child: Row(
                              children: <Widget>[
                              Text(
                                  buttonText,
                                  style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: SizeConfig.width(18)),
                                  child: Icon(Icons.arrow_forward ,
                                  color:
                                        Theme.of(context).primaryIconTheme.color,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: constraints.maxWidth / 1.75,
                        
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(topText,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                            Text(
                              middleText,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(bottomText,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          onTap: ontap,
        );
      },
    );
  }
}
