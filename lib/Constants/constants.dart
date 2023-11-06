import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../providers/providers.dart';

const kPrimaryColor = Colors.green;
const kSecondaryColor = Colors.white;
const kBgColor = Colors.white;
const btnColor = Color.fromARGB(255, 1, 186, 44);

const kDefaultPadding = 16.0;
//Stream<QuerySnapshot> stream = FirebaseFirestore.instance.collection('Complains').where("username",isEqualTo:context.read<Info>().user.name).snapshots();

LinearGradient lg = const LinearGradient(
  colors: [
    Color.fromARGB(255, 28, 93, 24),
    Color.fromARGB(255, 132, 234, 154),
    Color.fromARGB(255, 9, 137, 39), //(0xFF845EC2),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const kSvg = "assets/icons/Documents.svg";
String userAccountType = "";
String currentUserName = "";
String currentUserEmail = "";
String currentUserPass = "";
const TextStyle rcT = TextStyle(
  fontSize: 15,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
TextStyle rcST = TextStyle(
  fontSize: 15,
  color: Colors.white.withOpacity(0.95),
  fontWeight: FontWeight.normal,
);
