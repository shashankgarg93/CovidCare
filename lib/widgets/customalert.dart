
import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';

class AlertButton{

  Future display_alert(context){
  return CoolAlert.show(
   context: context,
   type: CoolAlertType.success,
   text: "Thankyou for Donating!",
);}
}