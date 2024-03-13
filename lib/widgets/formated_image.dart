import 'package:flutter/material.dart';

class FormattedImage extends StatelessWidget {
  String pictureUrlFinal = "";
  String pictureAssetFinal = "";
  bool asset = true;

  FormattedImage({
    Key? key,
    String? pictureUrl,
    String? pictureAsset,
  }) : super(key: key){
    pictureUrlFinal = pictureUrl ?? "";
    pictureAssetFinal = pictureAsset ?? "assets/images/flutter.png";

    asset = pictureUrl == null;
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 80,
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: asset ?
            Image.asset(
              pictureAssetFinal,
              fit: BoxFit.cover,
            ) :
        Image.network(
          pictureUrlFinal,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
