import 'package:flutter/material.dart';
import 'package:flutter_dit_project/views/login_ui.dart';
import 'package:flutter_dit_project/views/signup_ui.dart';
//stl
class WelcomeUi extends StatelessWidget {
  const WelcomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,  
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 130,
              ),
              Image.asset(
                'assets/images/image1.png',
                width: 300.0,
              ),
              SizedBox(
                height: 150,
              ),
              Text(
                'ยินดีต้อนรับสู่ DTI-SAU',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold, 
                  ),
              ),
              Text(
                'มหาวิทยาลัยเอเชียอาคเนย์',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold, 
                  ),
              ),
              Text(
                'Created by Ninnin DTI-SAU',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold, 
                  ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUi(),
                        ),
                      );
                    },
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      150.0,
                      55.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color:Colors.black,
                      ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupUi(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      150.0,
                      55.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'Sing up',
                      style: TextStyle(
                        color:Colors.white,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}