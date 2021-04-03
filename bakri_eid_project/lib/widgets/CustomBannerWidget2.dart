import 'package:bakri_eid/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

class CustomBannerWidget2 extends StatelessWidget {
  const CustomBannerWidget2({
    Key key,
    this.imagePath,
    this.title, this.ontap,
  }) : super(key: key);
  final String imagePath, title;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.height(8),
          bottom: SizeConfig.height(8),
          ),
      child: InkWell(
              child: Container(
          color: Theme.of(context).colorScheme.primaryVariant,
          height: MediaQuery.of(context).size.height * 0.30,
          width: MediaQuery.of(context).size.width * 0.46,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width * 0.46,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Text(title,
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.left)),
            ],
          ),
        ),
        onTap: ontap,
      ),
    );
  }
}
