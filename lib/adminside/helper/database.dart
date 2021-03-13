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
  final userRef = _db.collection("videos").document(videoName);
  if (!(await userRef.get()).exists) {
    await userRef.setData(videoDatamap);
  }
}
