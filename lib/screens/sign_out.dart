import 'package:beauty_clinic/components/bc_text_field.dart';
import 'package:beauty_clinic/components/logo.dart';
import 'package:beauty_clinic/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:beauty_clinic/screens/recovery_password.dart';

final TextEditingController _emailController = TextEditingController();

class Signout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Alterando o signout');
    final MediaQueryData data = MediaQuery.of(context);
    final Size sizeScreen = data.size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage('assets/images/logo.png'),
              repeat: ImageRepeat.repeatX,
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.grey[100], BlendMode.screen)),
        ),
        padding: new EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: sizeScreen.height * 0.05,
        ),
        width: sizeScreen.width,
        height: sizeScreen.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Logo(sizeScreen: sizeScreen),
              Welcome(sizeScreen: sizeScreen),
              Form(sizeScreen: sizeScreen),
            ],
          ),
        ),
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  final Size sizeScreen;

  const Welcome({Key key, this.sizeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Bem vindo !',
            style: TextStyle(
                fontSize: sizeScreen.width * 0.08, fontWeight: FontWeight.bold),
          ),
          Text('Faça seu login para continuar')
        ],
      ),
    );
  }
}

class Form extends StatelessWidget {
  final Size sizeScreen;

  const Form({Key key, this.sizeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(top: sizeScreen.width * 0.05),
      child: Column(
        children: <Widget>[
          BcTextField(
            controller: _emailController,
            sizeScreen: sizeScreen,
            icon: Icons.mail_outline,
            hint: 'E-mail',
          ),
          BcTextField(
            sizeScreen: sizeScreen,
            icon: Icons.lock_outline,
            hint: 'Senha',
            security: true,
          ),
          Container(
            padding: new EdgeInsets.only(
                top: sizeScreen.height * 0.01,
                left: sizeScreen.height * 0.025,
                right: sizeScreen.height * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  child: Container(
                      child: Text(
                    'Esqueceu a senha ?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RecorevyPassword())),
                ),
              ],
            ),
          ),
          Container(
            margin: new EdgeInsets.only(top: sizeScreen.height * 0.03),
            child: SizedBox(
              width: sizeScreen.width * 0.70,
              height: sizeScreen.width * 0.11,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text(
                  'ENTRAR',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.grey[100]),
                ),
                onPressed: () => print(_emailController.text.toString()),
              ),
            ),
          ),
          Container(
            padding:
                new EdgeInsets.symmetric(horizontal: sizeScreen.width * 0.35),
            margin: new EdgeInsets.only(top: sizeScreen.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  child: Icon(
                    FontAwesomeIcons.google,
                    size: sizeScreen.width * 0.09,
                  ),
                  onTap: () => print('Google'),
                ),
                InkWell(
                  child: Icon(
                    FontAwesomeIcons.facebookSquare,
                    size: sizeScreen.width * 0.09,
                  ),
                  onTap: () => print('Facebook'),
                ),
              ],
            ),
          ),
          InkWell(
            child: Container(
              padding: new EdgeInsets.only(top: sizeScreen.width * 0.05),
              child: Text(
                'Cadastre-se',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: sizeScreen.width * 0.05),
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Register(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
