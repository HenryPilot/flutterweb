import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

_launchURL() async {
  final url = "http://www.hsbc.com";
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true); //forceWebView
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web test',
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: TextTheme(
          headline2: TextStyle(
            color: Colors.white,
          ),
          headline3: TextStyle(
            color: Colors.black,
          ),
          headline4: TextStyle(
            color: Colors.black,
          ),
          headline5: TextStyle(
            color: Colors.black,
          ),
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: WhomePage(),
    );
  }
}

class WhomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          WtopNavBar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrow1(),
          ),
          Wrow2(),
          Wrow3(),
          Wrow4(),
          Wrow5(),
          Wrow6(),
        ],
      ),
    );
  }
}

class WtopNavBar extends StatelessWidget {
  static const _mitem1 = 'Who we are';
  static const _mitem2 = 'Our approach';
  static const _mitem3 = 'Investors';
  static const _mitem4 = 'Media';
  static const _mitem5 = 'Careers';
  static const _mitem6 = 'Online bancking';
  static const _mitem7 = 'Contact';
  static const _wmitem8 = Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          child: Image.asset('asset/hsbc-logo.png'),
          onPressed: _launchURL,
        ),
        FlatButton(
          child: Text(_mitem1),
          onPressed: _launchURL,
        ),
        FlatButton(
          child: Text(_mitem2),
          onPressed: _launchURL,
        ),
        FlatButton(
          child: Text(_mitem3),
          onPressed: _launchURL,
        ),
        FlatButton(
          child: Text(_mitem4),
          onPressed: _launchURL,
        ),
        FlatButton(
          child: Text(_mitem5),
          onPressed: _launchURL,
        ),
        FlatButton(
          child: Text(_mitem6),
          onPressed:_launchURL,
        ),
        FlatButton(
          child: Text(_mitem7),
          onPressed: _launchURL,
        ),
        FlatButton(
          child: _wmitem8,
          onPressed: _launchURL,
        )
      ],
    );
  }
}

class Wrow1 extends StatelessWidget {
  static const _row1Text1 = "Data & Analytics";
  static const _row1Text2 = "We're re-imagining the world of banking";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('asset/row1.jpg',
            colorBlendMode: BlendMode.darken, color: Colors.black),
        Column(
          children: <Widget>[
            Text(
              _row1Text1,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              _row1Text2,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ],
      alignment: Alignment.centerLeft,
    );
    //Stack(children: <Widget>[Text("text in stack"),Image.asset('asset/who-we-are.jpg')],

    // );
  }
}

class Wrow2 extends StatelessWidget {
  static const _row2Text1 = "We're a globally conneeted community";
  static const _row2Text2 =
      "We help our organisation to create frictionless and beautiful customer journey, differented exeriences and personal and relevant fialogue with customers. Whilst we operate in many geographies, we are a single global community. We build a capability once - and delopy this at scale acorss our markets.";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Container(
            child: Text(
              _row2Text1,
              style: Theme.of(context).textTheme.headline4,
            ),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(30),
          ),
        ),
        Flexible(
          child: Container(
            child: Text(
              _row2Text2,
              style: Theme.of(context).textTheme.headline5,
            ),
            margin: EdgeInsets.all(30),
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}

class Wrow3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('asset/row2-imgbg.jpg'),
        Image.asset('asset/row2-img1.jpg'),
      ],
      alignment: Alignment.bottomCenter,
    );
  }
}

class Wrow4 extends StatelessWidget {
  static const _row4Text1 = "Our Purpose";
  static const _row4Text2 =
      "As a team, we are continuously reinventing ourselves, always seeking new opportunities and forever curious. We are a team that make our ‘no’s’ a ‘yes’ - we will not accept constraints or limitations. Even when we aren’t sure how we will arrive at a destination, we remain confident and determined that we can get there. We have the best people in the right places and together we will succeed. All of our teams innovate at the cutting-edge of their fields in order to continuously update our skills. We are fundamentally modernising data science and our passion is our people. Investment in our people is critical to our success. We will continue to offer our people unparalleled career equity – the opportunities to learn, develop and deliver on pivotal-use cases. These experiences will position our people for the next two decades in their career. Together, our community will transform HSBC into a data-led business.";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Container(
            child: Text(
              _row4Text1,
              style: Theme.of(context).textTheme.headline4,
            ),
            margin: EdgeInsets.all(30),
          ),
        ),
        Flexible(
          child: Container(
            child: Text(
              _row4Text2,
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.justify,
            ),
            margin: EdgeInsets.all(30),
          ),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}

class Wrow5 extends StatelessWidget {
  static const _row5Text1 = """1200
  people""";
  static const _row5Text2 = """30
  internal makets""";
  static const _row5Text3 = """3 
  offshor centres""";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
                  child: Container(
              child: Text(
                _row5Text1,
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20)),
        ),
        Flexible(
                  child: Container(
              child: Text(
                _row5Text2,
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20)),
        ),
        Flexible(
                  child: Container(
              child: Text(
                _row5Text3,
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20)),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class Wrow6 extends StatelessWidget {
  static const _row6Text1 =
      "Ranil Boteju was appointed as the Global Head of Data & Analytics in 2013, and under his leadership we have undergone significant transformation. 2019 specifically was a huge milestone for us as a team as we were responsible for achieving 1bn dollars in revenue. This is significant as it means we can continue to invest in new technologies and grow as a community. One of the main reasons we have achieved this phenomenal success is because despite our geographical spread we manage to maintain an interconnected community and a strongly effective global network. This enables us to deploy and scale our ML services across such a large organisation. This is symbolic of both the strength of our Leadership Team and the passion of our people.";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: Image.asset('asset/row6-img.jpg'),
                    padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20)),
       
        Flexible(
          child: Container(
            child: Text(
              _row6Text1,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.justify,
            ),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,),
        ),
      ],
    );
  }
}