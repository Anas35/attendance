import 'dart:io';

import 'package:attendance/styles.dart';
import 'package:flutter/material.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key, this.onPressed, this.file});

  final void Function()? onPressed;
  final File? file;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: textFieldColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: file != null
                ? CircleAvatar(
                    maxRadius: 25.0,
                    backgroundImage: FileImage(file!),
                  )
                : const CircleAvatar(
                    maxRadius: 25.0,
                    backgroundColor: semiLightPrimaryColor,
                    child: Icon(Icons.person, size: 30),
                  ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              file?.path.split('/').last ?? 'No File Selected',
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w400,
                fontSize: 17.0,
                color: darkTextColor,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(75, 40),
                  backgroundColor: semiLightPrimaryColor,
                  textStyle: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: lightTextColor,
                  ),
                  foregroundColor: lightTextColor,
                ),
                child: const Text('Upload'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
