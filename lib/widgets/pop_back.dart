import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';

class PopBackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PopBackAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: InkWell(
        onTap: () => Navigator.pop(context),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.arrow_back, color: lightTextColor, size: 25.0),
            SizedBox(width: 5.0),
            Text('Back',
                style:
                    TextStyle(color: lightTextColor, fontWeight: FontWeight.w700, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
