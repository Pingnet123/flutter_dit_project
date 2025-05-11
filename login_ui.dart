

import 'package:flutter/material.dart';
import 'package:flutter_dit_project/views/signup_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 40.0,
          ),
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap:(){
                      //การย้อยกลับไปหน้าก่อนหน้า
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size : 30,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/image1.png',
                    width: 150,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold, 
                    ),
                              ),
                ),
                Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Make it woke, made it right, made if fast.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold, 
                    ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    FontAwesomeIcons.user,
                    // Icons.person_2_outlied
                  ),
                  hintText: 'E-Mail',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    FontAwesomeIcons.fingerprint,
                    // Icons.fingerprint
                  ),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.visibility,
                    ),
                  ), 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed : (){},
                  child: Text(
                    'Forgot Password?',
                  ),
                  ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color:Colors.white,
                      ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 20.0,
                ),
                child: Text(
                  'OR'
                ),
              ),
              OutlinedButton(
                    onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/image2.png',
                          width: 25.0,
                        ),
                        Text(
                          '   Sign-In with Google',
                          style: TextStyle(
                            color:Colors.black,
                          ),
                                        ),
                      ],
                    ),
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(
                        'Don\'t have an Account?',
                        ),
                        TextButton(
                          onPressed : (){
                            Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupUi(),
                        ),
                      );
                          },
                          child: Text(
                          'Sign Up',
                          ),
                        ),
                    ],
                      
                    
                  ),
                
              ],
          ),
              ),
        ),
      ),
      );
  }
}