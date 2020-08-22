import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String name;
String email;
String imageUrl;
Future signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );
  final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  assert(user.email != null);
  assert(user.displayName != null);
  assert(user.photoUrl != null);
  name = user.displayName;
  email = user.email;
  imageUrl = user.photoUrl;

  print(name);
  print(email);
  print(imageUrl);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);
  return user;
}

void signOutGoogle() {
  _auth.signOut();
  print("User Sign Out");
}
