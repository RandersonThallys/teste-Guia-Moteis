import 'package:intl/intl.dart';

class Formatter {
  String doubleToReal(double value) {
    final formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return formatter.format(value);
  }
}
