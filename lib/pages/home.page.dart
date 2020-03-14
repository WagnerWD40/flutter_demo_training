import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHeader(),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }

}

Widget appBarHeader() {
  return AppBar(
      backgroundColor: Colors.white,
      title: Center(
        child: SizedBox(
          width: 100,
          child: Image.asset('assets/app-logo.png'),
        ),
      ),
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/user-picture.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      actions: <Widget>[
        Container(
          width: 60,
          child: FlatButton(
            child: Icon(
              Icons.search,
              color: Color(0xFFBABABA),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );  
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://www.w3schools.com/w3images/avatar6.png'),
          ),
          title: Text('Bruce Wayne'),
          subtitle: Text('09/05/2019 18:37'),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Image.asset('assets/post-picture-001.png'),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            "Bacon ipsum dolor amet tri-tip bacon chuck bresaola pastrami sirloin. Pork chop pork loin pig kielbasa drumstick, leberkas beef ribs pastrami corned beef tongue swine porchetta. Pancetta leberkas pig sausage, shankle spare ribs pork belly rump kevin bacon beef ribs beef jerky ground round swine. Shankle tenderloin capicola drumstick tri-tip corned beef burgdoggen chicken salami."
          ),
        ),
        cardFooter(),
      ],
    ),
  );
}

Widget cardFooter() {
  return ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.favorite),
                onPressed: () {},
              ),
              FlatButton(
                child: Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
        );
}