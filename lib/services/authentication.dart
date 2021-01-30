import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

FirebaseAuth auth = FirebaseAuth.instance;
final gSignIn = GoogleSignIn();

Future<bool> googleSignIn() async {
  GoogleSignInAccount googleSignInAccount = await gSignIn.signIn();

  if (googleSignInAccount != null) {
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    AuthResult result = await auth.signInWithCredential(credential);

    FirebaseUser user = await auth.currentUser();
    print("The user id is : " + user.uid);

    return Future.value(true);
  }
}

Future<bool> SignUp(String email, String password) async {
  try {
    AuthResult result = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    //FirebaseUser user = result.user;
    return Future.value(true);
  } catch (e) {
    print(e.toString());
  }
}

Future<bool> SignIn(String email, String password) async {
  try {
    AuthResult result =
        await auth.signInWithEmailAndPassword(email: email, password: password);

    //FirebaseUser user = result.user;
    return Future.value(true);
  } catch (e) {
    print(e.toString());
  }
}
