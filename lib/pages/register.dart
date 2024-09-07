import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:yuva_hack/pages/constructor.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameTracker = TextEditingController();
  final numberTracker = TextEditingController();
  XFile? _imageFile;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("REGISTER"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 28),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: _pickImage,
                child: _imageFile == null
                    ? Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[500]
                        ),
                        width: double.infinity,
                        height: 100,
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 50,
                        ),
                      )
                    : Image.file(
                        File(_imageFile!.path),
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Name",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: nameTracker,
                keyboardType: TextInputType.name,
                style: const TextStyle(fontSize: 20.0, color: Colors.white),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Phone Number",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: numberTracker,
                keyboardType: TextInputType.phone,
                style: const TextStyle(fontSize: 20.0, color: Colors.white),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Enter your phone number',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              const SizedBox(height: 120,),
              Center(
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Constructor()));
                  },
                  // color: Colors.amber,
                  shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)), side: BorderSide(color: Colors.white)),
                  elevation: 1,
                  height: 45,
                  child: const Text("SUBMIT", style: TextStyle(color: Colors.white),),
                ),
              ),              
            ],
          ),
        ),
      ),
    );
  }
}

