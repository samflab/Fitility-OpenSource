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
  if (genre == "Dance") {
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
  } else if (genre == "Workout") {
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
}

Future<void> deleteVideo(String jobId) {
  return _db.collection('videos').document(jobId).delete();
}
