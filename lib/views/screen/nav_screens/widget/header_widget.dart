import 'package:flutter/material.dart';


class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return container(
      width : MediaQuery.of(context).size.width ,
      height: MediaQuery.of(context).size.height*0.20 ,
      child : Stack(children:
      Image.assets('assets/icons/Banner.jpg'),width: MediaQuery.of(context).size.width,
        fit: boxFit.cover,
      ),

    );
  }
}
