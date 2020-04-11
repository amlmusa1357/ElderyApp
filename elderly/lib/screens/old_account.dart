import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  String name, age, address, idNumber;

  getName(name) {
    this.name = name;
  }

  getAge(age) {
    this.age = age;
  }

  getAdress(address) {
    this.address = address;
  }

  getIdNumber(id) {
    this.idNumber = id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          _myAppBar(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 80,
            child: ListView(
              children: <Widget>[
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: new Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      onChanged: (String name) {
                        getName(name);
                      },
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          labelText: "اسمك", hintText: "اكتب اسمك رباعي "),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: new Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      onChanged: (String age) {
                        getAge(age);
                      },
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(labelText: "عمرك"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: new Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      onChanged: (String adress) {
                        getAdress(adress);
                      },
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          labelText: "عنوانك",
                          hintText: "اكتب العنوان بالتفصيل"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: new Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      onChanged: (String id) {
                        getIdNumber(id);
                      },
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          labelText: "الرقم القومي",
                          hintText: "هذا فقط للتأكد من صحة هويتك"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                )
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              //this button cancel the dialogue

              new RaisedButton(
                  color: Colors.orange,
                  onPressed:()=> Navigator.of(context).pop(),
                  child: Text(
                    "Cancel",
                    style: TextStyle(color:Colors.white),

                  ),
              ),
              //this button add the elderly account to the database
              new RaisedButton(
                color: Colors.orange,
                onPressed:() {

                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color:Colors.white),

                ),
              ),

            ],


          ),
        ],

      ),

    );
  }

  Widget _myAppBar() {
    return Container(
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.orangeAccent],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
        ),
      ),
    );
  }
}
