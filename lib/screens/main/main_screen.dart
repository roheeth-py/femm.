import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:femm/widgets/main_screen/date_picker.dart';
import 'package:femm/widgets/main_screen/main_card.dart';
import 'package:femm/widgets/main_screen/timeline.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum Type {
  period,
  ovulation,
  pms,
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  void initState() {
    FirebaseFirestore.instance.collection("users").doc(user.uid).set(
      {
        "Period": FieldValue.arrayUnion(
          [
            {
              "${DateFormat("MMMM y").format(DateTime.now())}": []
          }
          ]
        ),
      },
      SetOptions(
        merge: true,
      ),
    );
    super.initState();
  }

  String get monthName {
    String format = DateFormat("MMMM y").format(DateTime.now());
    return format;
  }

  @override
  Widget build(BuildContext context) {
    final day = null;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          monthName,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: const Column(
        children: [
          DatePicker(),
          SizedBox(height: 10),
          MainCard(),
          TimeLines(),
        ],
      ),
    );
  }
}
