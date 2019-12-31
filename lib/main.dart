import 'package:flutter/material.dart';
import 'tabs.dart';

void main() => runApp(MyApp());
enum PortfolioState {
  Welcome,
  MyNameIs,
  WhoAmI,
  MyExperience,
  Skills,
  ContactMe,
  FollowMe
}
PortfolioState portfolioState = PortfolioState.Welcome;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Oussama's Portfolio",
      theme: ThemeData(primarySwatch: Colors.grey, fontFamily: 'OpenSans'),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Oussama Maatallah'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          child: Scaffold(
            backgroundColor: Colors.black,
            body: ListView(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        print("Welcome tapped!");
                        setState(() {
                          portfolioState = PortfolioState.Welcome;
                        });
                      },
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: Container(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.005),
                              color: Colors.red,
                              height: MediaQuery.of(context).size.width * 0.1,
                              width: MediaQuery.of(context).size.width * 0.1,
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(90),
                                  child: Container(
                                    child: Image.asset(
                                      'assets/profile_pic.jpg',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "@melWiss",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                PortfolioListTile(
                  title: 'My Name is...',
                  function: () {
                    print("pressed My Name is...");
                    setState(() {
                      portfolioState = PortfolioState.MyNameIs;
                    });
                  },
                ),
                PortfolioListTile(
                  title: 'Who am I?',
                  function: () {
                    print("pressed Who am I?");
                    setState(() {
                      portfolioState = PortfolioState.WhoAmI;
                    });
                  },
                ),
                PortfolioListTile(
                  title: 'My Experience',
                  function: () {
                    print("pressed My Experience");
                    setState(() {
                      portfolioState = PortfolioState.MyExperience;
                    });
                  },
                ),
                PortfolioListTile(
                  title: 'Skills',
                  function: () {
                    print("pressed Skills");
                    setState(() {
                      portfolioState = PortfolioState.Skills;
                    });
                  },
                ),
                PortfolioListTile(
                  title: 'Contact me',
                  function: () {
                    print("pressed Contact me");
                    setState(() {
                      portfolioState = PortfolioState.ContactMe;
                    });
                  },
                ),
                PortfolioListTile(
                  title: 'Follow me',
                  function: () {
                    print("pressed Fllow me");
                    setState(() {
                      portfolioState = PortfolioState.FollowMe;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: portfolioSelector(),
        ),
      ],
    );
  }
}

Widget portfolioSelector() {
  switch (portfolioState) {
    case PortfolioState.Welcome:
      return WelcomeTab();
      break;
    case PortfolioState.MyNameIs:
      return MyNameIsTab();
      break;
    case PortfolioState.WhoAmI:
      return WhoAmITab();
      break;
    case PortfolioState.MyExperience:
      return MyExperienceTab();
      break;
    case PortfolioState.Skills:
      return SkillsTab();
      break;
    case PortfolioState.ContactMe:
      return ContactMeTab();
      break;
    case PortfolioState.FollowMe:
      return FollowMeTab();
      break;
    default:
      return WelcomeTab();
  }
}
