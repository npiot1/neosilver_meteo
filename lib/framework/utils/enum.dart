import 'package:recase/recase.dart';

String enumToString(dynamic value) {
  final string = value.toString().split('.').last;
  return ReCase(string).snakeCase;
}