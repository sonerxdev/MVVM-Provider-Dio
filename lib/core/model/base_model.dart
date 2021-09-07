import 'package:flutter/widgets.dart';

abstract class BaseModel<T> extends ChangeNotifier {
  Map<String, Object?> toJson();
  T fromJson(Map<String, dynamic> json);
}
