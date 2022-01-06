import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CoinCDXFirebaseUser {
  CoinCDXFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

CoinCDXFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CoinCDXFirebaseUser> coinCDXFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<CoinCDXFirebaseUser>(
        (user) => currentUser = CoinCDXFirebaseUser(user));
