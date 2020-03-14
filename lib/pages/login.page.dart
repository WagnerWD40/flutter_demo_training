import 'package:flutter/material.dart';
import 'package:login_screen/pages/home.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            header(),
            SizedBox(height: 10),
            inputEmail(),
            inputPassword(),
            buttonRecoverPassword(context),
            SizedBox(height: 10),
            buttonLogin(context),
            SizedBox(height: 10),
            buttonFacebook(),
            SizedBox(height: 10),
            buttonSignUp(),
          ],
        ),
      ),
    );
  }

}

Widget header() {
    return SizedBox(
      width: 128,
      height: 128,
      child: Image.asset('assets/logo.png'),
    );
  }

Widget inputEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'E-mail',
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      style: TextStyle(fontSize: 20),
    );
  }

Widget inputPassword() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Senha',
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      style: TextStyle(fontSize: 20),
    );   
  }

Widget buttonRecoverPassword(BuildContext context){
    return Container(
      height: 40,
      alignment: Alignment.centerRight,
      child: FlatButton(
        child: Text(
          'Recuperar Senha',
          textAlign: TextAlign.right,
        ),
        onPressed: () {

        },
      ),
    );
  }

Widget buttonLogin(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [
            Color(0xFFF58524),
            Color(0xFFF92B7F),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                child: SizedBox(
                  child: Image.asset('assets/bone.png'),
                  height: 28,
                  width: 28,
                ),
              ),
              ],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
      ),
    );
  }

Widget buttonFacebook() {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Color(0xff3C5A99),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        )
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Login com Facebook',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                child: SizedBox(
                  child: Image.asset('assets/fb-icon.png'),
                  height: 28,
                  width: 28,
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }

Widget buttonSignUp() {
    return Container(
      height: 40,
      child: FlatButton(
        child: Text(
          'Cadastre-se',
          textAlign: TextAlign.center,
        ),
        onPressed: () {},
      ),
    );
  }
