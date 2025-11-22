import 'package:flutter/material.dart';
import 'arrow_painter.dart';

class AboutUsHeader extends StatelessWidget {
  final String title;
  final String? highlightText;
  final Color highlightColor;
  final IconData? icon;

  final bool showSearch;
  final VoidCallback? onSearchTap;

  const AboutUsHeader({
    super.key,
    this.title = 'About Us',
    this.highlightText,
    this.highlightColor = Colors.yellow,
    this.icon,
    this.showSearch = false,
    this.onSearchTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF224F78),
      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // السهم
          CustomPaint(size: const Size(30, 70), painter: ArrowPainter()),
          const SizedBox(width: 12),

          // العنوان مع Highlight
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: RichText(text: TextSpan(children: _buildTextSpans())),
            ),
          ),

          // الأيقونة (لو موجودة)
          if (icon != null) ...[
            const SizedBox(width: 10),
            Icon(icon, size: 40, color: Colors.white),
          ],

          // أيقونة البحث
          if (showSearch) ...[
            const SizedBox(width: 12),
            GestureDetector(
              onTap: onSearchTap,
              child: const Icon(Icons.search, size: 32, color: Colors.white),
            ),
          ],
        ],
      ),
    );
  }

  List<TextSpan> _buildTextSpans() {
    if (highlightText != null && title.contains(highlightText!)) {
      final parts = title.split(highlightText!);
      return [
        TextSpan(
          text: parts[0],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
        TextSpan(
          text: highlightText,
          style: TextStyle(
            color: highlightColor,
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
        if (parts.length > 1)
          TextSpan(
            text: parts[1],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w300,
            ),
          ),
      ];
    }
    return [
      TextSpan(
        text: title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w300,
        ),
      ),
    ];
  }
}
