import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final String loadingMessage;

  const LoadingWidget({
    @required this.loadingMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(
              height: 15,
            ),
            Text(
              loadingMessage,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
