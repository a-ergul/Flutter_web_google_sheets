import 'package:flutter/material.dart';
import 'package:caci/model/form_feedback.dart';
import 'package:caci/model/form_controller.dart';

class sagSayfa extends StatefulWidget {
  @override
  _sagSayfaState createState() => _sagSayfaState();
}

class _sagSayfaState extends State<sagSayfa> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController namecontrol = TextEditingController();
  TextEditingController emailcontrol = TextEditingController();
  TextEditingController instacontrol = TextEditingController();
  TextEditingController twittercontrol = TextEditingController();
  TextEditingController tiktokcontrol = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      FeedbackForm feedbackForm = FeedbackForm(
          namecontrol.text,
          emailcontrol.text,
          instacontrol.text,
          twittercontrol.text,
          tiktokcontrol.text);

      FormController formController = FormController((String response) {
        print("Response $response");
        if (response == FormController.STATUS_SUCCESS) {
          _showSnackbar("Cevabınız Gönderildi");
        } else {
          _showSnackbar("Cevabınız Gönderildi");
        }
      });

      _showSnackbar("Cevabınız Gönderiliyor");

      formController.submitForm(feedbackForm);
    }
  }

  _showSnackbar(String message) {
    final snackBar = SnackBar(content: Text(message));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 80),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  controller: namecontrol,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Lütfen Alanı Doldurunuz";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      labelText: "Adınız *",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w600)),
                                ),
                                TextFormField(
                                  controller: emailcontrol,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Lütfen Alanı Doldurunuz";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      labelText: "Email Adresiniz *",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w600)),
                                ),
                                TextFormField(
                                  controller: instacontrol,
                                  decoration: InputDecoration(
                                      labelText: "Instagram Kullanıcı Adınız",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w600)),
                                ),
                                TextFormField(
                                  controller: twittercontrol,
                                  decoration: InputDecoration(
                                      prefixStyle:
                                          TextStyle(color: Colors.white),
                                      labelText: "Twitter Kullanıcı Adınız",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w600)),
                                ),
                                TextFormField(
                                  controller: tiktokcontrol,
                                  scrollPadding: EdgeInsets.all(15),
                                  decoration: InputDecoration(
                                      labelText: "Tiktok Kullanıcı Adınız",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w600)),
                                ),
                                Center(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 15, bottom: 16),
                                  child: Text(
                                    "* Alanları Doldurmak Zorunludur",
                                    style: TextStyle(color: Colors.white54),
                                  ),
                                )),
                                OutlineButton(
                                  disabledTextColor: Colors.white,
                                  disabledBorderColor: Colors.white,
                                  highlightedBorderColor: Colors.white,
                                  onPressed: _submitForm,
                                  padding: EdgeInsets.all(30),
                                  color: Colors.black,
                                  textColor: Colors.white,
                                  child: Center(
                                    child: Text("Gönder"),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
