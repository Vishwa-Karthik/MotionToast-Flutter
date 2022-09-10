import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple.shade100,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.deepPurple.shade100,
          title: const Text(
            "Motion Toast",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                  onPressed: () {
                    showSuccessToast(context);
                  },
                  child: const Text(
                    "Success Toast",
                    style: TextStyle(color: Colors.black),
                  )),
            ),

            // 2
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                  onPressed: () {
                    showDeleteToast(context);
                  },
                  child: const Text(
                    "Delete Toast",
                    style: TextStyle(color: Colors.black),
                  )),
            ),

            // 3
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                  onPressed: () {
                    showWarningToast(context);
                  },
                  child: const Text(
                    "Warning Toast",
                    style: TextStyle(color: Colors.black),
                  )),
            ),

            // 4
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                  onPressed: () {
                    showErrorToast(context);
                  },
                  child: const Text(
                    "Error Toast",
                    style: TextStyle(color: Colors.black),
                  )),
            ),

            // 5
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                  onPressed: () {
                    showInfoToast(context);
                  },
                  child: const Text(
                    "Info Toast",
                    style: TextStyle(color: Colors.black),
                  )),
            ),

            // 6
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                  onPressed: () {
                    showInfoToast(context);
                  },
                  child: const Text(
                    "Custom Toast",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        )),
      ),
    );
  }

  void showSuccessToast(context) {
    MotionToast.success(
      description: const Text("This is success "),
      enableAnimation: true,
      animationType: AnimationType.fromRight,
      toastDuration: const Duration(seconds: 2),
      borderRadius: 40.0,
      barrierColor: Colors.transparent,
    ).show(context);
  }

  void showDeleteToast(context) {
    MotionToast.delete(
      description: const Text("This is delete "),
      enableAnimation: true,
    ).show(context);
  }

  void showWarningToast(context) {
    MotionToast.warning(
      description: const Text("This is warning "),
      enableAnimation: true,
    ).show(context);
  }

  void showErrorToast(context) {
    MotionToast.error(
      description: const Text("This is Error "),
      enableAnimation: true,
    ).show(context);
  }

  void showInfoToast(context) {
    MotionToast.info(
      description: const Text("This is info "),
      enableAnimation: true,
    ).show(context);
  }

  void showCustomToast(context) {
    MotionToast.error(
      description: const Text("This is Custom "),
      enableAnimation: true,
    ).show(context);
  }
}
