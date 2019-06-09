import 'package:flutter/material.dart';

import '../product_manager.dart';
import 'package:course_project/pages/manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ManagerAdmin()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Car Listing'),
      ),
      body: ProductManager(),
    );
  }
}
