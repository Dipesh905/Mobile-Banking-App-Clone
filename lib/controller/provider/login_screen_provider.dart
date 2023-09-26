import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRememberMeProvider = StateProvider<bool>(
  (ref) => false,
);

final obsecureTextProvider = StateProvider<bool>(
  (ref) => true,
);
