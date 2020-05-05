import 'package:beauty_clinic/components/bc_text_field.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final Size sizeScreen = media.size;
    return Scaffold(
      body: Container(
        padding: new EdgeInsets.symmetric(
            horizontal: sizeScreen.width * 0.02,
            vertical: sizeScreen.width * 0.15),
        height: sizeScreen.height,
        width: sizeScreen.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Text(
                      'Beauty Clinic',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: sizeScreen.width * 0.08,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    Container(
                        padding:
                            new EdgeInsets.only(top: sizeScreen.width * 0.02),
                        child: Text(
                          'Cadastro',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: sizeScreen.width * 0.05),
                        ))
                  ],
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: sizeScreen.width * 0.05),
                child: BcTextField(
                  labelText: 'Nome',
                  labelColor: Colors.white,
                  sizeScreen: sizeScreen,
                  icon: Icons.person,
                  iconColor: Colors.white,
                  hint: 'Nome',
                  hintColor: Colors.white,
                  fillColor: Color.fromRGBO(1, 1, 1, 0.2),
                  cursorColor: Colors.white,
                  borderColor: Colors.white,
                  textColor: Colors.white,
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: sizeScreen.width * 0.01),
                child: BcTextField(
                  labelText: 'E-mail',
                  labelColor: Colors.white,
                  sizeScreen: sizeScreen,
                  icon: Icons.email,
                  iconColor: Colors.white,
                  hint: 'E-mail',
                  hintColor: Colors.white,
                  fillColor: Color.fromRGBO(1, 1, 1, 0.2),
                  cursorColor: Colors.white,
                  textType: TextInputType.emailAddress,
                  borderColor: Colors.white,
                  textColor: Colors.white,
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: sizeScreen.width * 0.01),
                child: BcTextField(
                  labelText: 'Telefone',
                  labelColor: Colors.white,
                  sizeScreen: sizeScreen,
                  icon: Icons.phone,
                  iconColor: Colors.white,
                  hint: 'Telfone',
                  hintColor: Colors.white,
                  fillColor: Color.fromRGBO(1, 1, 1, 0.2),
                  cursorColor: Colors.white,
                  textType: TextInputType.number,
                  borderColor: Colors.white,
                  textColor: Colors.white,
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: sizeScreen.width * 0.01),
                child: BcTextField(
                  labelText: 'Senha',
                  labelColor: Colors.white,
                  sizeScreen: sizeScreen,
                  icon: Icons.lock_outline,
                  iconColor: Colors.white,
                  hint: 'Senha',
                  hintColor: Colors.white,
                  fillColor: Color.fromRGBO(1, 1, 1, 0.2),
                  cursorColor: Colors.white,
                  borderColor: Colors.white,
                  textColor: Colors.white,
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: sizeScreen.width * 0.01),
                child: BcTextField(
                  labelText: 'Confirmar senha',
                  labelColor: Colors.white,
                  sizeScreen: sizeScreen,
                  icon: Icons.lock_outline,
                  iconColor: Colors.white,
                  hint: 'Confirmar senha',
                  hintColor: Colors.white,
                  fillColor: Color.fromRGBO(1, 1, 1, 0.2),
                  cursorColor: Colors.white,
                  textColor: Colors.white,
                  borderColor: Colors.white,
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: sizeScreen.width * 0.02),
                child: SizedBox(
                  width: sizeScreen.width * 0.90,
                  height: sizeScreen.width * 0.12,
                  child: RaisedButton(
                    color: Color.fromRGBO(182, 20, 98, 0.1),
                    child: Text(
                      'CRIAR',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.white, width: 0.5),
                    ),
                    onPressed: () => print('Button pressed'),
                  ),
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: sizeScreen.width * 0.05),
                child: InkWell(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: sizeScreen.width * 0.12,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
