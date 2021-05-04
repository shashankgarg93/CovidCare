import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser {
      final DocumentReference rootdoc = FirebaseFirestore.instance.collection('root').doc('1');
     /// DocumentReference doc = users.doc('1');
     
  Future updateUser(Map details, int money, int r, int t, int o) async {
    CollectionReference users = rootdoc.collection(details['city'].toUpperCase());
    DocumentReference doc = users.doc('1');
    CollectionReference R = doc.collection('Rem');
     await R.doc(details['name']).set({
      'quantity': r,
      'name': details['name'],
      'phone no' : details['contact'],
    }
    );
    CollectionReference T = doc.collection('Toz');
    CollectionReference M = doc.collection('Money');
    CollectionReference O = doc.collection('Oxy');
    await T.doc(details['name']).set({
      'quantity': t,
      'name': details['name'],
      'phone no' : details['contact'],
    }
    );
    await O.doc(details['name']).set({
      'quantity': o,
      'name': details['name'],
      'phone no' : details['contact'],
    }
    );
    await M.doc(details['name']).set({
      'quantity': money,
      'name': details['name'],
      'phone no' : details['contact'],
    }
    );
  }
    
  Future getcities() async
  {
    DocumentSnapshot doc = await rootdoc.get();
    return doc.data();

  }

  }