import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mate_vibes/feature/create_account/create_account_success.dart';
import 'package:mate_vibes/feature/homepage/bottom_bar.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var valueChoose;

  List listItem = ["Male", "Female", "Others"];
  File? _image;

  // This is the image picker
  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: _image != null
                        ? Image.file(_image!, fit: BoxFit.cover)
                        : const Text(''),
                    width: double.infinity,
                    height: 240,
                    color: Colors.pink[100],
                  ),
                  ElevatedButton(
                    onPressed: _openImagePicker,
                    child: const Text("Select cover image"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1300),
                child: Container(
                  child: _image != null
                      ? Image.file(_image!, fit: BoxFit.cover)
                      : const Text(''),
                  height: 70,
                  width: 70,
                  color: Colors.pink[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1205),
                child: ElevatedButton(
                  onPressed: _openImagePicker,
                  child: const Text("Select display image"),
                ),
              ),
            ],
          ),
          Text(
            'Hi,  User',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Color(0xff0f1c3c),
            ),
          ),
          Text(
            'Let’s complete your profile',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Color(0xffaeaeae),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Display Name',
              hintStyle: TextStyle(fontFamily: 'Manrope'),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3, color: Colors.grey)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'What describes you better?',
              hintStyle: TextStyle(fontFamily: 'Manrope'),
              hintMaxLines: 3,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3, color: Colors.grey)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: DropdownButton(
                hint: Text(
                  "Gender",
                  style: TextStyle(fontFamily: "Manrope", fontSize: 20),
                ),
                dropdownColor: Colors.white,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(color: Colors.grey, fontSize: 20),
                value: valueChoose,
                onChanged: (val) {
                  setState(() {
                    valueChoose = val;
                  });
                },
                items: listItem.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateAccountSuccess()));
              },
              child: Text(
                "CONTINUE",
                style: TextStyle(fontFamily: 'Manrope'),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  minimumSize: Size(180, 45),
                  textStyle: TextStyle(fontSize: 20),
                  onPrimary: Color(0xFFFFFFFF),
                  primary: Color(0xFF8E35FF)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Navi()));
                },
                child: Text(
                  "SKIP FOR NOW",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
