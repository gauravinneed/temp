import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/texture.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Online Exam'),
          ),
          backgroundColor: Colors.transparent,
          //backgroundColor: Colors.deepOrangeAccent,
          //backgroundColor: Image.asset('assets/images/texture.jpg').color,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.00),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/avatar_2x.png'),
                      radius: 100.00,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.00),
                    padding: EdgeInsets.all(15.00),
                    //height: 250,
                    //width: 350,
                    //color: Colors.black,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                      borderRadius: BorderRadius.circular(15.00),
                    ),
                    child: Text(
                      'IN-HOUSE USER LOGIN ',
                      style: TextStyle(
                        color: Colors.tealAccent,
                        letterSpacing: 3.00,
                        fontSize: 20.00,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //CustomizedContainer(),
                  Container(
                    width: double.infinity,
                    //height: double.infinity,
                    padding: EdgeInsets.all(10.00),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                      borderRadius: BorderRadius.circular(15.00),
                    ),
                    child: Column(
                      children: <Widget>[
//                          Text(
//                            'in-house authentication'.toUpperCase(),
//                            textAlign: TextAlign.center,
//                            style: TextStyle(
//                                color: Colors.tealAccent,
//                                letterSpacing: 3.0,
//                                fontSize: 20.00,
//                                fontWeight: FontWeight.bold),
//                          ),
                        TextFormField(
                          textCapitalization: TextCapitalization.characters,
                          maxLength: 7,
                          decoration: InputDecoration(
                              counterStyle: TextStyle(color: Colors.white),
                              labelText: 'USER ID',
                              prefixIcon: Icon(
                                Icons.account_circle,
                                size: 50.00,
                              ),
                              suffixIcon: Icon(
                                Icons.account_circle,
                                size: 50.00,
                              )),
                          autofocus: true,
                          cursorColor: Colors.yellowAccent,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.00,
                              letterSpacing: 1.5),
                        ),
                        TextFormField(
                          textCapitalization: TextCapitalization.characters,
                          maxLength: 7,
                          decoration: InputDecoration(
                              counterStyle: TextStyle(color: Colors.white),
                              labelText: 'USER ID',
                              prefixIcon: Icon(
                                Icons.account_circle,
                                size: 50.00,
                              ),
                              suffixIcon: Icon(
                                Icons.account_circle,
                                size: 50.00,
                              )),
                          autofocus: true,
                          cursorColor: Colors.yellowAccent,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.00,
                              letterSpacing: 1.5),
                        ),
                      ],
                    ),
                  ),
//                  Expanded(
//                    child: SizedBox(
//                      //width: 100.00,
//                      height: 300.00,
//                    ),
//                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomizedContainer extends StatelessWidget {
  const CustomizedContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.00),
      margin: EdgeInsets.all(10.00),
      //height: 250,
      //width: 250,
      //color: Colors.black,
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.4),
        borderRadius: BorderRadius.circular(15.00),
      ),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.vpn_key),
              labelText: 'password',
              hintText: 'password',
            ),
          ),
        ],
      ),
    );
  }
}
