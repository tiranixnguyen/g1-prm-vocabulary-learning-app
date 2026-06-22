// dimensions.dart
abstract class Dimensions {
  // 1. Padding & Margin (Hệ số 4/8)
  static const double space4 = 4.0;
  static const double space8 = 8.0;
  static const double space12 = 12.0;
  static const double space16 = 16.0; // Chuẩn mặc định của Mobile
  static const double space24 = 24.0;
  static const double space32 = 32.0;

  // 2. Border Radius (Bo góc)
  static const double radiusSmall = 4.0; // Dùng cho tag, badge nhỏ
  static const double radiusMedium =
      12.0; // Dùng cho button, ô nhập liệu (TextField)
  static const double radiusLarge =
      20.0; // Dùng cho Thẻ Flashcard chính của WordWise
  static const double radiusCircular =
      99.0; // Bo tròn tuyệt đối (Avatar, nút tròn)

  // 3. Icon Sizes
  static const double iconSmall = 16.0;
  static const double iconMedium = 24.0; // Chuẩn Material Design
  static const double iconLarge = 32.0;
}
