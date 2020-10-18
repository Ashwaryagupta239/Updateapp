import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



void main()
{
  runApp(MaterialApp(
    title: 'Update App',
    home: FirstWidget(),
  ));
}

class FirstWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("App Update"),),
        body: Column(children: <Widget>[
          AlertDialog(title: Text("New version is available"),
            actions: <Widget>[
              FlatButton(child: Text("Update"),
                onPressed: () => _launchURL('https://play.google.com/store/apps/details?id=com.assitantera.strot'),
              ),

            ],)
        ],)
    );
  }

}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}