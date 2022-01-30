import 'package:flutter/material.dart';
import 'package:libadwaita/src/models/models.dart';
import 'package:libadwaita/src/widgets/widgets.dart';

class AdwViewSwitcherTab extends StatelessWidget {
  const AdwViewSwitcherTab({
    Key? key,
    required this.data,
    required this.style,
    this.badgeColor,
    this.isSelected = false,
    this.onSelected,
  }) : super(key: key);

  final AdwColors? badgeColor;
  final ViewSwitcherData data;
  final ViewSwitcherStyle style;
  final bool isSelected;
  final VoidCallback? onSelected;

  @override
  Widget build(BuildContext context) {
    final isDesktop = style == ViewSwitcherStyle.desktop;

    return AdwButton.flat(
      constraints: isDesktop
          ? const BoxConstraints(minWidth: 120, minHeight: 34, maxHeight: 36)
          : const BoxConstraints(minWidth: 75),
      margin:
          isDesktop ? const EdgeInsets.fromLTRB(0, 6, 3, 6) : EdgeInsets.zero,
      onPressed: onSelected,
      isActive: isSelected,
      textStyle: TextStyle(
        fontSize: isDesktop ? null : 11,
      ),
      borderRadius: isDesktop
          ? const BorderRadius.all(Radius.circular(6))
          : BorderRadius.zero,
      child: _AdwViewSwitcherTabLayout(
        isRow: isDesktop,
        children: [
          if (data.icon != null)
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Icon(
                    data.icon,
                    size: 16,
                  ),
                ),
                if (data.badge != null)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: AdwAvatar(
                      size: 13,
                      backgroundColor: badgeColor ?? AdwColors.blue,
                      child: Text(
                        data.badge!,
                        style: const TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
              ],
            ),
          if (data.icon != null && data.title != null)
            const SizedBox(width: 8, height: 2),
          if (data.title != null) Text(data.title!),
        ],
      ),
    );
  }
}

class _AdwViewSwitcherTabLayout extends StatelessWidget {
  const _AdwViewSwitcherTabLayout({
    Key? key,
    required this.isRow,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;
  final bool isRow;

  @override
  Widget build(BuildContext context) {
    return isRow
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          );
  }
}
