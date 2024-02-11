import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ClickCamera extends StatefulWidget {
  final String cropType;
  const ClickCamera({super.key, required this.cropType});

  @override
  State<ClickCamera> createState() => _ClickCameraState();
}

class _ClickCameraState extends State<ClickCamera> {
  uploadImageFromCamera() async {
    try {
      final result = await ImagePicker().pickImage(source: ImageSource.camera);
      if (result != null) {
        print("image selected");
      } else {
        print("no image selected");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: h * 1,
      width: w * 1,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: h * 0.1,
          ),
          Text(
            "Upload Image/Camera",
            style: GoogleFonts.workSans(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/scan.png"),
          SizedBox(
            height: 30,
          ),
          Text(
            "Please Upload Your " + widget.cropType + " Image",
            style: GoogleFonts.workSans(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w300),
          ),
          Text(
            "and get the conditions details",
            style: GoogleFonts.workSans(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w300),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  uploadImageFromCamera();
                },
                // ignore: sort_child_properties_last
                child: Text(
                  "Select From Gallery",
                  style: GoogleFonts.manrope(
                      color: const Color.fromARGB(255, 53, 53, 53),
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 153, 255, 157),
                    elevation: 0),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Click from Camera",
            style: GoogleFonts.inter(
                color: Colors.green, fontWeight: FontWeight.w400, fontSize: 15),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    ));
  }
}


// https://asset.cloudinary.com/dwkmxsthr/1e55c5aa6c504655b83e8a6973680a15