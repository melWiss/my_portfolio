import 'package:flutter/material.dart';

class WelcomeTab extends StatelessWidget {
  const WelcomeTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome!",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width * 0.02,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }
}


class MyNameIsTab extends StatelessWidget {
  const MyNameIsTab({Key key}) : super(key: key);
//TODO: Finish this Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
class WhoAmITab extends StatelessWidget {
  const WhoAmITab({Key key}) : super(key: key);
//TODO: Finish this Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
class MyExperienceTab extends StatelessWidget {
  const MyExperienceTab({Key key}) : super(key: key);
//TODO: Finish this Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
class ContactMeTab extends StatelessWidget {
  const ContactMeTab({Key key}) : super(key: key);
//TODO: Finish this Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
class FollowMeTab extends StatelessWidget {
  const FollowMeTab({Key key}) : super(key: key);
//TODO: Finish this Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
class SkillsTab extends StatelessWidget {
  const SkillsTab({Key key}) : super(key: key);
//TODO: Finish this Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}





























class PortfolioListTile extends StatelessWidget {
  final String title;
  final Function function;
  PortfolioListTile({this.function, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: InkWell(
        splashColor: Colors.red,
        highlightColor: Colors.redAccent,
        onTap: () => function(),
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.0125),
          child: Text(
            title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.017,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class PortfolioIcon extends StatelessWidget {
  const PortfolioIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => print("Welcome tapped!"),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
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
                fontSize: MediaQuery.of(context).size.width * 0.02,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
