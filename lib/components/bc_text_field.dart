import 'package:beauty_clinic/components/bc_components/bc_platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';


class BcTextField extends StatelessWidget {
  final Size sizeScreen;
  final IconData icon;
  final Color iconColor;
  final String hint;
  final Color hintColor;
  final bool security;
  final Color fillColor;
  final TextInputType textType;
  final Color cursorColor;
  final Color borderColor;
  final Color textColor;
  final String labelText;
  final Color labelColor;
  final TextEditingController controller;

  const BcTextField({
    Key key,
    this.sizeScreen,
    this.icon,
    this.hint,
    this.security = false,
    this.iconColor,
    this.hintColor,
    this.fillColor,
    this.textType,
    this.cursorColor,
    this.borderColor,
    this.textColor,
    this.labelText,
    this.labelColor,
    this.controller,
  }) :  super(key: key);

  Widget build(BuildContext context) {
    final _widthScreen = sizeScreen.width;
    final Color _borderColor =
        borderColor != null ? borderColor : Theme.of(context).primaryColor;
    final Color _textColor =
        textColor != null ? textColor : Theme.of(context).primaryColor;
    final Color _cursorColor =
        cursorColor != null ? cursorColor : Theme.of(context).primaryColor;

    final TextInputType _keyboardType =
        textType != null ? textType : TextInputType.text;

    final TextStyle _hintStyle =
        new TextStyle(color: hintColor != null ? iconColor : Colors.grey[500]);

    final Color _iconColor = iconColor != null ? iconColor : Colors.grey[500];

    final String _labelText = labelText != null ? labelText : '';
    final Color _labelColor =
        labelColor != null ? labelColor : Theme.of(context).primaryColor;

    return Container(
      height: _widthScreen * 0.14,
      margin: new EdgeInsets.symmetric(
        horizontal: _widthScreen * 0.03,
        vertical: _widthScreen * 0.02,
      ),
      child: new TextFormField(
        controller: controller,
        autofocus: false,
        style: TextStyle(color: _textColor),
        enableInteractiveSelection: true,
        cursorColor: _cursorColor,
        keyboardType: _keyboardType,
        decoration: new InputDecoration(
            enabledBorder: new OutlineInputBorder(
                borderSide: new BorderSide(color: _borderColor, width: 0.5),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                )),
            border: new OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
            filled: true,
            labelText: _labelText,
            labelStyle: TextStyle(color: _labelColor),
            hintStyle: _hintStyle,
            hintText: hint,
            fillColor: fillColor != null ? fillColor : Colors.white,
            prefixIcon: Icon(
              icon,
              color: _iconColor,
              size: _widthScreen * 0.06,
            ),
            suffixIcon: security
                ? IconButton(icon: Icon(Icons.remove_red_eye), onPressed: () {})
                : null,
            contentPadding:
                new EdgeInsets.symmetric(horizontal: _widthScreen * 0.02)),
        obscureText: security,
      ),
    );
  }
}
