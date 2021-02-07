class FeedbackForm {
  String _name;
  String _email;
  String _insta;
  String _twitter;
  String _tiktok;

  FeedbackForm(
      this._name, this._email, this._insta, this._twitter, this._tiktok);

  String toParams() =>
      "?name=$_name&email=$_email&insta=$_insta&twitter=$_twitter&tiktok=$_tiktok";
}
