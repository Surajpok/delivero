import 'package:delivero/imports.dart';
import 'package:flutter/services.dart';
import 'masked_input_formator.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({
    required this.hintTextString,
    required this.textEditController,
    required this.inputType,
    this.enableBorder = true,
    this.themeColor,
    this.cornerRadius,
    this.maxLength,
    this.prefixIcon,
    this.textColor,
    this.errorMessage,
    // this.labelText,
  });

  // ignore: prefer_typing_uninitialized_variables
  final hintTextString;
  final TextEditingController textEditController;
  final InputType inputType;
  final bool enableBorder;
  final Color? themeColor;
  final double? cornerRadius;
  final int? maxLength;
  final Widget? prefixIcon;
  final Color? textColor;
  final String? errorMessage;
  // final String? labelText;

  @override
  _CustomTextInputState createState() => _CustomTextInputState();
}

// input text state
class _CustomTextInputState extends State<CustomTextInput> {
  bool _isValidate = true;
  String validationMessage = '';
  bool visibility = false;
  int oldTextSize = 0;

  // build method for UI rendering
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      child: TextField(
        controller: widget.textEditController,
        decoration: InputDecoration(
          hintText: widget.hintTextString as String,
          errorText: _isValidate ? null : validationMessage,
          counterText: '',
          border: getBorder(),
          enabledBorder: widget.enableBorder ? getBorder() : InputBorder.none,
          focusedBorder: widget.enableBorder ? getBorder() : InputBorder.none,
          // labelText: widget.labelText ?? widget.hintTextString as String,
          labelStyle: getTextStyle(),
          prefixIcon: widget.prefixIcon ?? getPrefixIcon(),
          suffixIcon: getSuffixIcon(),
        ),
        onChanged: checkValidation,
        keyboardType: getInputType(),
        obscureText: widget.inputType == InputType.Password && !visibility,
        maxLength: widget.inputType == InputType.PaymentCard
            ? 19
            : widget.maxLength ?? getMaxLength(),
        style: TextStyle(
          color: widget.textColor ?? Colors.black,
        ),
        inputFormatters: [getFormatter()],
      ),
    );
  }

  //get border of textinput filed
  OutlineInputBorder getBorder() {
    return OutlineInputBorder(
      borderRadius:
          BorderRadius.all(Radius.circular(widget.cornerRadius ?? 15.0)),
      borderSide: BorderSide(
        width: 1,
        color: widget.themeColor ?? Theme.of(context).primaryColor,
      ),
      gapPadding: 2,
    );
  }

  // formatter on basis of textinput type
  TextInputFormatter getFormatter() {
    if (widget.inputType == InputType.PaymentCard)
      return MaskedTextInputFormatter(
        mask: 'xxxx xxxx xxxx xxxx',
        separator: ' ',
      );
    else
      return TextInputFormatter.withFunction((oldValue, newValue) => newValue);
  }

  // text style for textinput
  TextStyle getTextStyle() {
    return TextStyle(
        color: widget.themeColor ?? Theme.of(context).primaryColor);
  }

  // input validations
  void checkValidation(String textFieldValue) {
    if (widget.inputType == InputType.Default) {
      //default
      _isValidate = textFieldValue.isNotEmpty;
      validationMessage = widget.errorMessage ?? 'Filed cannot be empty';
    } else if (widget.inputType == InputType.Email) {
      //email validation
      _isValidate = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(textFieldValue);
      validationMessage = widget.errorMessage ?? 'Email is not valid';
    } else if (widget.inputType == InputType.Number) {
      //contact number validation
      _isValidate = textFieldValue.length == widget.maxLength;
      validationMessage = widget.errorMessage ?? 'Contact Number is not valid';
    } else if (widget.inputType == InputType.Password) {
      //password validation
      _isValidate = RegExp(
              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
          .hasMatch(textFieldValue);
      validationMessage = widget.errorMessage ?? 'Password is not valid';
    } else if (widget.inputType == InputType.PaymentCard) {
      //payment card validation
      _isValidate = textFieldValue.length == 19;
      validationMessage = widget.errorMessage ?? 'Card number is not correct';
    }
    oldTextSize = textFieldValue.length;
    //change value in state
    setState(() {});
  }

  // return input type for setting keyboard
  TextInputType getInputType() {
    switch (widget.inputType) {
      case InputType.Default:
        return TextInputType.text;

      case InputType.Email:
        return TextInputType.emailAddress;

      case InputType.Number:
        return TextInputType.number;

      case InputType.PaymentCard:
        return TextInputType.number;

      default:
        return TextInputType.text;
    }
  }

  // get max length of text
  int getMaxLength() {
    switch (widget.inputType) {
      case InputType.Default:
        return 36;

      case InputType.Email:
        return 36;

      case InputType.Number:
        return 10;

      case InputType.Password:
        return 24;

      case InputType.PaymentCard:
        return 19;

      default:
        return 36;
    }
  }

  // get prefix Icon
  Icon getPrefixIcon() {
    switch (widget.inputType) {
      case InputType.Default:
        return Icon(
          Icons.person,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );

      case InputType.Email:
        return Icon(
          Icons.email,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );

      case InputType.Number:
        return Icon(
          Icons.phone,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );

      case InputType.Password:
        return Icon(
          Icons.lock,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );

      case InputType.PaymentCard:
        return Icon(
          Icons.credit_card,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );

      default:
        return Icon(
          Icons.person,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );
    }
  }

  // get suffix icon
  Widget getSuffixIcon() {
    if (widget.inputType == InputType.Password) {
      return IconButton(
        onPressed: () {
          visibility = !visibility;
          setState(() {});
        },
        icon: Icon(
          visibility ? Icons.visibility : Icons.visibility_off,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        ),
      );
    } else {
      return const Opacity(opacity: 0, child: Icon(Icons.phone));
    }
  }
}

enum InputType { Default, Email, Number, Password, PaymentCard }
