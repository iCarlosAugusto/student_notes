//import 'dart:io';
//import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//
//class ProfilePhotoWidget extends StatelessWidget {
//  ProfilePhotoWidget({super.key, this.photo, this.margin, this.width = 100, this.height = 100});
//  
//  final File? photo;
//  final EdgeInsetsGeometry? margin;
//  double width;
//  double height;
//
//  @override
//  Widget build(BuildContext context) {
//
//    return photo == null 
//      ? Container(
//        margin: margin,
//        width: width,
//        height: height,
//        decoration: BoxDecoration(
//          shape: BoxShape.circle,
//          color: Colors.white,
//          border: Border.all(
//            color: Colors.orange,
//            width: 1
//          )
//        ),
//        child: Align(child: Icon(Icons.person_outlined, size: width / 2, color: Colors.black38))
//      ) 
//      : InkWell(
//        onTap: () {
//          showDialog<void>(
//            context: context,
//            builder: (BuildContext context) {
//              return Center(
//                child: SizedBox(
//                  height: MediaQuery.of(context).size.height - 300,
//                  width: MediaQuery.of(context).size.width - 50,
//                  child: Stack(
//                    children: [
//                      Image.file(
//                        photo!,
//                        fit: BoxFit.cover,
//                      ),
//                      Align(
//                        alignment: Alignment.topRight,
//                        child: IconButton(
//                          onPressed: () => Get.back(),
//                          icon: const Icon(Icons.close, color: Colors.white)
//                        ),
//                      )
//                    ],
//                  ),
//                )
//              );
//            }
//          );
//        },
//        child: Container(
//          margin: margin,
//          width: width,
//          height: height,
//          decoration: BoxDecoration(
//            shape: BoxShape.circle,
//            color: Colors.black87,
//            image: DecorationImage(  
//              fit: BoxFit.cover,
//              image: FileImage(photo!,)
//            )
//          )
//        ),
//      );
//  }
//}
