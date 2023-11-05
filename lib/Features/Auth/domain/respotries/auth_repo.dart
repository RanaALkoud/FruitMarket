import 'package:flutter/material.dart';

abstract class AuthRepo{

  Future loginWithGoogle();
  Future loginWithFasebook();
  Future CompleteInformation({@required String name, @required String phonnumber, @required String address});
}