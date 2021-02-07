import 'dart:convert' as convert;
import 'form_feedback.dart';
import 'package:http/http.dart' as http;

class FormController {
  final void Function(String) callback;

  static const String URL = "googlesheetlinkhere :)";

  static const STATUS_SUCCESS = "success";

  FormController(this.callback);

  void submitForm(FeedbackForm feedbackForm) async {
    try {
      await http.get(URL + feedbackForm.toParams()).then((response) {
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (e) {
      print(e);
    }
  }
}
