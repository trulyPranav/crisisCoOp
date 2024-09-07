import 'package:flutter/material.dart';
import 'package:yuva_hack/pages/constructor.dart';
import 'package:yuva_hack/pages/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final fieldNumber = TextEditingController();
  final fieldPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset("assets/mainLogo.png.jpg"),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.white, )
              ),
              margin: const EdgeInsets.all(30),
              child: TextFormField(
                controller: fieldNumber,
                keyboardType: TextInputType.phone,
                style: const TextStyle(fontSize: 20.0, color: Colors.white),
                textAlign: TextAlign.center,
                onSaved: (value) {},
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(fontWeight: FontWeight.w400),
                  border: InputBorder.none,),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.white)
              ),
              margin: const EdgeInsets.all(30),
              child: TextFormField(
                controller: fieldPassword,
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(fontSize: 20.0, color: Colors.white),
                textAlign: TextAlign.center,
                onSaved: (value) {},
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontWeight: FontWeight.w400,),
                  border: InputBorder.none,),
              ),
            ),
            const SizedBox(height: 30,),
            MaterialButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Constructor()));
              },
              // color: Colors.amber,
              shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)), side: BorderSide(color: Colors.white)),
              elevation: 1,
              height: 45,
              child: const Text("SUBMIT", style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("New User?", style: TextStyle(fontSize: 15, color: Colors.white),),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                  },
                  child: const Text("Register Here!", style: TextStyle(fontSize:16, color: Colors.white, decoration: TextDecoration.underline, decorationColor: Colors.white, decorationThickness: 2),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}