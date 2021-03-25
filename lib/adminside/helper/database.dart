import 'package:cloud_firestore/cloud_firestore.dart';

Firestore _db = Firestore.instance;

Future<void> saveVideoToDb({
  String videoName,
  String description,
  String genre,
  String workoutGenre,
  String level,
  String imgurl,
  String ytlink,
}) async {
  Map<String, dynamic> videoDatamap = {
    "videoname": videoName,
    "description": description,
    "genre": genre,
    "workoutGenre": workoutGenre,
    "level": level,
    "imgurl": imgurl,
    "ytlink": ytlink,
  };
  final userRef = _db.collection("videos").document(videoName);
  if (!(await userRef.get()).exists) {
    await userRef.setData(videoDatamap);
  }
}

Future<void> deleteVideo(String video) {
  return _db.collection('videos').document(video).delete();
}

Future<void> updateVideo({
  String videoName,
  String description,
  String genre,
  String workoutGenre,
  String level,
  String imgurl,
  String ytlink,
}) async {
  Map<String, dynamic> updateVideo = {
    "videoname": videoName,
    "description": description,
    "genre": genre,
    "workoutGenre": workoutGenre,
    "level": level,
    "imgurl": imgurl,
    "ytlink": ytlink,
  };

  return await _db
      .collection("videos")
      .document(videoName)
      .updateData(updateVideo);
}
