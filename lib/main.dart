import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginbloc/login/facebook.dart';
import 'package:loginbloc/login/google.dart';
import 'colors/colors.dart';
import 'signup.dart';
import 'login.dart';
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: transparent,
          statusBarIconBrightness: Brightness.dark));

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,

      body: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100,),
                Hero(
                  tag: "planet",
                  child: Container(
                      height: 95,
                      width: 95,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: white.withOpacity(0.5),
                          border: Border.all(color: orange, width: 1),
                          boxShadow: [
                            BoxShadow(
                              color: white.withOpacity(0.7),
                              offset: const Offset(-1.0, -1.0),
                              blurRadius: 13,
                              spreadRadius: 5,
                            )
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/planetDeer2.png", height: 65,
                            width: 65,),
                          //  Text("Planet Deer",style: textYellow22,),
                        ],)),
                ),

                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 42,
                        width: 135,
                        decoration: BoxDecoration(
                            color: white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: black.withOpacity(0.4), width: 1)
                        ),
                        child: const Center(child: Text("Login")),
                      ),
                    ),
                    const SizedBox(width: 25,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 42,
                        width: 135,
                        decoration: BoxDecoration(
                            color: white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: black.withOpacity(0.4), width: 1)
                        ),
                        child: const Center(child: Text("Signup")),
                      ),
                    ),
                  ],),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Facebook()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 42,
                    width: Width * 0.75,
                    decoration: BoxDecoration(
                        color: blue.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: black.withOpacity(0.4), width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/face.png", height: 30, width: 30,),
                        const SizedBox(width: 7,),
                        const Text("Continue with Facebook"),
                      ],
                    ),


                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Google()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 42,
                    width: Width * 0.75,
                    decoration: BoxDecoration(
                        color: darkPink.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: black.withOpacity(0.4), width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/insta.png", height: 30, width: 30,),
                        const SizedBox(width: 7,),
                        const Text("Continue with Google",),
                      ],
                    ),


                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Google()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 42,
                    width: Width * 0.75,
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: black.withOpacity(0.4), width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/apple.png", height: 30, width: 30,),
                        const SizedBox(width: 7,),
                        const Text("Continue with Apple"),
                      ],
                    ),


                  ),
                ),
                const SizedBox(height: 120),
                const Text("Terms and Conditions*",)
              ],),
          )
        ],
      ),
    );

  }


}