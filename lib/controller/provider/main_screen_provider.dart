import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentlySelectedIndexProvider = StateProvider<int>(
  (ref) => 0,
);
