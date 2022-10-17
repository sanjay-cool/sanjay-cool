import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tech_comprehension/easy_main.dart';
import 'package:tech_comprehension/home.dart';
import 'package:tech_comprehension/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
_launchURL() async {
  var  url = 'https://www.codegrepper.com/code-examples/dart/open+link+with+button+flutter';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context)  {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Soot Separator dashboard',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'This is the place where you can find all your vehicle emission ',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/

        ],
      ),
    );
    Color color = Theme
        .of(context)
        .primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [


        ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => questions()),
          );
        }, child: Text('Please provide feedback on your experience with our app '))

      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Insert your soot separator in your vehicle to start getting data on the app. Thank you. ',
        softWrap: true,
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),

        ),
        body: ListView(
          children: [

            titleSection,
            buttonSection,
            textSection,

          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}




