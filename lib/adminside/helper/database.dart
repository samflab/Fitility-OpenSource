import 'package:cloud_firestore/cloud_firestore.dart';

Firestore _db = Firestore.instance;

Future<void> saveVideoToDb({
  String videoName,
  String description,
  String genre,
  String imgurl,
  String ytlink,
}) async {
  Map<String, dynamic> videoDatamap = {
    "videoname": videoName,
    "description": description,
    "genre": genre,
    "imgurl": imgurl,
    "ytlink": ytlink,
  };
  if (genre == "Workout") {
    final userRef = _db.collection("workout").document(videoName);
    if (!(await userRef.get()).exists) {
      await userRef.setData(videoDatamap);
    }
  }
  if (genre == "Dance") {
    final userRef = _db.collection("dance").document(videoName);
    if (!(await userRef.get()).exists) {
      await userRef.setData(videoDatamap);
    }
  }
}
