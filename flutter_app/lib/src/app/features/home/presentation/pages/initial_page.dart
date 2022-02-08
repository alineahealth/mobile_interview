import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      body: SearchComponent(),
    );
  }
}
