import 'dart:ui';

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4.0,
          sigmaY: 4.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              SizedBox(
                height: 144.0,
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: Color(0xFF363a43),
                  hintText: 'Search food or restaurant here...',
                  hintStyle: TextStyle(
                    fontSize: 21.0,
                  ),
                ),
              ),
              ButtonBar(
                children: [
                  OutlineButton(
                    onPressed: () => Navigator.of(context).pop(),
                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      'CANCEL',
                      style: TextStyle(
                        color: Color(0xFF363a43),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.of(context).pop(),
                    color: Color(0xFF02b14c),
                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text('SEARCH'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
