import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../res/app.context.extension.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Lấy palette màu chuẩn từ hệ thống (Tự động thích ứng Light/Dark)
    final colors = ref.colors;
    final dimensions = ref.dimensions;
    final typography = ref.typography;

    return Scaffold(
      backgroundColor: colors
          .background, // Sẽ tự là màu tối nếu bật Dark Mode, hoặc màu sáng nếu là Light Mode
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: dimensions.screenPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              // 1. Tiêu đề chính sử dụng màu textPrimary hệ thống
              Text(
                'Điều làm cho\nWordWise khác\nbiệt?',
                style: typography.headingLarge.copyWith(
                  color: colors
                      .textPrimary, // Đã sửa: Không dùng màu cứng trắng xóa nữa
                ),
              ),

              const SizedBox(height: 48),

              // 2. Danh sách tính năng
              _buildFeatureItem(
                ref: ref,
                icon: Icons.psychology_outlined,
                text: 'Học từ vựng cốt lõi theo ngữ cảnh thực tế',
              ),
              SizedBox(height: dimensions.sectionSpacing),
              _buildFeatureItem(
                ref: ref,
                icon: Icons.play_circle_outline_rounded,
                text: 'Ghi nhớ sâu qua chuỗi Flashcard thông minh',
              ),
              SizedBox(height: dimensions.sectionSpacing),
              _buildFeatureItem(
                ref: ref,
                icon: Icons.chat_bubble_outline_rounded,
                text: 'Luyện phản xạ từ vựng cùng AI Coach',
              ),

              const Spacer(),

              // 3. Nút bấm chính "Bắt đầu"
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        colors.primary, // Màu xanh Indigo chuẩn của app
                    foregroundColor: colors.textPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 0,
                  ),
                  child: Text('Bắt đầu', style: typography.buttonLabel),
                ),
              ),

              const SizedBox(height: 20),

              // Nút phụ "Tôi đã có tài khoản"
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Tôi đã có tài khoản',
                    style: typography.textLink.copyWith(
                      color: colors
                          .textSecondary, // Đã sửa: Đồng bộ với màu chữ phụ hệ thống
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  // Hàm build dòng tính năng cũng được đồng bộ màu sắc hoàn toàn
  Widget _buildFeatureItem({
    required WidgetRef ref,
    required IconData icon,
    required String text,
  }) {
    final colors = ref.colors;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 28,
          color: colors.textSecondary.withValues(
            alpha: 0.7,
          ), // Icon tiệp màu nhẹ với hệ thống
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: ref.typography.bodyFeature.copyWith(
              color: colors
                  .textPrimary, // Chữ hiển thị rõ ràng dựa theo màu nền hệ thống
            ),
          ),
        ),
      ],
    );
  }
}
