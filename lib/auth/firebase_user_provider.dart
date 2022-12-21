import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DavaoprimecreationFirebaseUser {
  DavaoprimecreationFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DavaoprimecreationFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DavaoprimecreationFirebaseUser> davaoprimecreationFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DavaoprimecreationFirebaseUser>(
      (user) {
        currentUser = DavaoprimecreationFirebaseUser(user);
        return currentUser!;
      },
    );
