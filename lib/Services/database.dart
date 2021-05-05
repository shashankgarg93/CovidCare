
// Import the firebase_core and cloud_firestore plugin
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser {
      final CollectionReference rootdoc = FirebaseFirestore.instance.collection('root');
     /// DocumentReference doc = users.doc('1');
     
  Future updateUser(Map details, int money, int r, int t, int o) async {
    //CollectionReference users = rootdoc.collection(details['city'].toUpperCase());
    DocumentReference doc = rootdoc.doc(details['city']);
    CollectionReference R = doc.collection('Rem');
    if(r!=0){
     await R.doc(details['name']).set({
      'quantity': r,
      'name': details['name'],
      'phone no' : details['contact'],
    }
    );}
    CollectionReference T = doc.collection('Toz');
    CollectionReference M = doc.collection('Money');
    CollectionReference O = doc.collection('Oxy');
    if(t!=0){await T.doc(details['name']).set({
      'quantity': t,
      'name': details['name'],
      'phone no' : details['contact'],
    }
    );}
    if(o!=0){
    await O.doc(details['name']).set({
      'quantity': o,
      'name': details['name'],
      'phone no' : details['contact'],
    }
    );}
    if(money!=0){
    await M.doc(details['name']).set({
      'quantity': money,
      'name': details['name'],
      'phone no' : details['contact'],
    }
    );}
  }
  //   List<String> getcity (Iterable<String> x)
  //   {
  //     return x.toList();
  //   }
  Future getcities() async
  {
      var result = await FirebaseFirestore.instance.collection('root').get();
      var x = result.docs.map((e) => e.id);
      return (x);
      
  }

  }