import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vegetables_shop/Features/Auth/domain/respotries/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future CompleteInformation({String? name, String? phonnumber, String? address}) {
   


    throw UnimplementedError();
  }

  @override
  Future loginWithFasebook() {


    throw UnimplementedError();
  }

  @override
  Future loginWithGoogle() async {

 Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  }}