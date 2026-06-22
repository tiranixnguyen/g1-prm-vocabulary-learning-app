// app.dimensions.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dimensions.dart';

part 'app.dimensions.g.dart';

@riverpod
AppDimensions appDimensions(Ref ref) {
  // Thay AppDimensionsRef bằng Ref
  return AppDimensions();
}

class AppDimensions {
  final double screenPadding = Dimensions.space16;
  final double elementSpacing = Dimensions.space12;
  final double sectionSpacing = Dimensions.space24;
  final double flashcardRadius = Dimensions.radiusLarge;
  final double flashcardPadding = Dimensions.space24;
}
