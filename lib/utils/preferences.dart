import 'package:js_onboarding/pages/home_page.dart';
import 'package:js_onboarding/pages/onboarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final Preferences _instance = Preferences._();

  factory Preferences() {
    return _instance;
  }

  Preferences._();

  SharedPreferences _prefs;

  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //Se obtienens los datos de la ultima ruta guardad en  la app
  //esto con la finalida de   no regresar  al onboading
  get initialPage {
    return _prefs.getString('initialPage') ?? OnboardingPage.routeName;
  }

  set initialPage(String value) {
    _prefs.setString('initialPage', value);
  }
}
