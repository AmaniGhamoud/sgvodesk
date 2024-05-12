import 'package:flutter/material.dart';
import 'package:sgovs/home/cree_vote/CreateVotePage.dart';
import 'package:sgovs/home/gerer_utilisateurs/manage_users_page.dart';
import 'package:sgovs/home/login.dart';
import 'package:sgovs/home/orgnize_renion/Orgnize_Renion.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Bourse extends StatefulWidget {
  const Bourse({Key? key}) : super(key: key);

  @override
  _BourseState createState() => _BourseState();
}

class _BourseState extends State<Bourse> {
  bool isLoggedIn = false;

  @override
  

_launchURL(url) async {
    
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
 
 
),

      body: Container(
        decoration: const BoxDecoration(
          
        ),
        child: SizedBox(
          height: 100, // Set a fixed height for the row
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               GestureDetector(
                  onTap: () {
                    _launchURL('https://www.sgbv.dz/');
                  },
                  child:Container(
                  padding:EdgeInsets.all(20) ,
                 
                  width: 300,
                  decoration: BoxDecoration(
                             color: Color.fromRGBO(28, 120, 117, 0.8),
                             borderRadius: BorderRadius.circular(20),
                        ),
                  child: Text("la bourse d'alger",style: TextStyle(fontFamily: 'Sora',fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white,),), 
                               ),
                ),
                 GestureDetector(
                  onTap: () {
                   _launchURL('https://www.sgbv.dz/?page=boc&lang=fr');
                  },
                  child:Container(
                  padding:EdgeInsets.all(20) ,
                 
                  width: 300,
                  decoration: BoxDecoration(
                             color: Color.fromRGBO(28, 120, 117, 0.8),
                             borderRadius: BorderRadius.circular(20),
                        ),
                  child: Column(mainAxisAlignment:MainAxisAlignment.center ,
                    children: [ 
                    
                    Text("Bulletin Officiel de la Cote",style: TextStyle(fontFamily: 'Sora',fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white,),),
                  ]), 
                               ),
                ),
               
               
              ],
            ),
          ),
        ),
      ),
    );
  }

}