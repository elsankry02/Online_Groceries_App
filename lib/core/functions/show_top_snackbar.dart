import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// message Error
messageError(BuildContext context, {required String message}) {
  showTopSnackBar(Overlay.of(context), CustomSnackBar.error(message: message));
}

// message Success
messageSuccess(BuildContext context, {required String message}) {
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.success(message: message),
  );
}
