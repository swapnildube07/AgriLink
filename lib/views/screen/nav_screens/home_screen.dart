import 'package:flutter/material.dart';

import 'widget/header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: column(
        children(
          HeaderWidget(),
        ),
      ),
    );
  }
}
