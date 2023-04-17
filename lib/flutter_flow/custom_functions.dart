import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

int calculateAge(DateTime dateToCheck) {
  return DateTime.now().year - dateToCheck.year;
}

DateTime calculateMonths(DateTime months) {
  // calculate baby Months
  final firstDate = DateTime(1);
  final difference = months.difference(firstDate);
  final monthsWords = (difference.inDays / 30).truncate();
  return firstDate.add(Duration(days: monthsWords * 30));
}

String audioLoop() {
  // musica audio loop
  var rand = math.Random();

  switch (rand.nextInt(6) + 1) {
    case 1:
      return 'soundLikeABoy_AU.mp3';
      break;
    case 2:
      return 'sunkenFootballClubSoundtrack01.mp3';
      break;
    case 3:
      return 'theWork_AU.mp3';
      break;
    case 4:
      return 'theGluggers_AU.mp3';
      break;
    case 5:
      return 'rubberDuck_AU.mp3';
      break;
    default:
      return 'theWork_AU.mp3';
      break;
  }
}
