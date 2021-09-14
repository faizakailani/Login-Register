import 'package:auth/ui/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("SIGN UP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
        elevation: 0,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100), )
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(100),),
              ),

              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        child: new Image.asset('assets/images/sakura2.png', height: 200,),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(150),bottomRight: Radius.circular(150)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(0.0, 8.0),
                                  blurRadius: 8.0)
                            ]
                        ),
                        padding: EdgeInsets.all(40),
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            // Text("LOGIN", style: TextStyle(color: Colors.lightGreen, fontWeight: FontWeight.bold, fontSize: 25.0),),
                            SizedBox(height: 30,),
                            TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(),
                                  labelText: "Nama Lengkap"
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(),
                                  labelText: "Email"
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(),
                                  labelText: "Password",
                                  suffixIcon: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          _secureText = !_secureText;
                                        });
                                      },
                                      icon: Icon(_secureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined, color: Colors.grey,)
                                  )
                              ),
                              obscureText: _secureText,
                            ),
                            Row(
                              children: <Widget>[
                                TextButton(onPressed: null, child: Text("Forgot Password ?",style: TextStyle(color: Colors.grey))),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Container(
                              width: MediaQuery.of(context).size.width*.80,
                              height: 50,
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text("Login",style: TextStyle(color: Colors.white, fontSize: 18),),
                                  style: TextButton.styleFrom(backgroundColor: Colors.grey,)
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Have an account ?"),
                                TextButton(
                                    onPressed: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginView()),);
                                    },
                                    child: Text("Sign In",style: TextStyle(color: Colors.grey))
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
