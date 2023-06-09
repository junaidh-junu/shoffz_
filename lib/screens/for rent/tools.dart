// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, unnecessary_nullable_for_final_variable_declarations, prefer_const_constructors, unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class toolsRental extends StatefulWidget {
  @override
  _toolsRentalState createState() => _toolsRentalState();
}

class _toolsRentalState extends State<toolsRental> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phnoController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  List<File> _selectedImages = [];

  Future<void> _pickImages() async {
    final List<XFile>? pickedImages = await _imagePicker.pickMultiImage();
    if (pickedImages != null) {
      setState(() {
        _selectedImages =
            pickedImages.map((XFile file) => File(file.path)).toList();
      });
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    _priceController.dispose();
    _nameController.dispose();
    _phnoController.dispose();
    super.dispose();
  }

  String? _validateTitle(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a title';
    }
    return null;
  }

  String? _validateDescription(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a description';
    }
    return null;
  }

  String? _validatePrice(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a price';
    }
    return null;
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Tools Rental '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: 'Ad title*',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                  validator: _validateTitle,
                ),
                TextFormField(
                  controller: _priceController,
                  decoration: InputDecoration(
                    labelText: "Price (per day) ₹", 
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                  validator: _validatePrice,
                ),
                SizedBox(height: 16.0),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _descController,
                  decoration: InputDecoration(
                    hintText: 'Describe what your are renting',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                  validator: _validateDescription,
                ),
                SizedBox(height: 16.0),
                
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Your name",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                  validator: _validateName,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _phnoController,
                  decoration: InputDecoration(
                    labelText: "Your phone number",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                  validator: _validatePhoneNumber,
                ),
                SizedBox(height: 26.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: _pickImages,
                  child: Text('Upload Images'),
                ),
                SizedBox(height: 16.0),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: _selectedImages
                      .map((File image) => Image.file(
                            image,
                            fit: BoxFit.cover,
                          ))
                      .toList(),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Handle form submission
                      String title = _titleController.text;
                      String desc = _descController.text;
                      String price = _priceController.text;
                      String name = _nameController.text;
                      List<String> imagePaths = _selectedImages
                          .map((File image) => image.path)
                          .toList();

                      // Perform desired actions with the collected data
                      // ...
                    }
                  },
                  child: Text(
                    'Post Now',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
