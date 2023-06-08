import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ElectronicRental extends StatefulWidget {
  @override
  _ElectronicRentalState createState() => _ElectronicRentalState();
}

class _ElectronicRentalState extends State<ElectronicRental> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
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
    _nameController.dispose();
    _modelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electronics Rental '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _modelController,
                decoration: InputDecoration(labelText: 'Model'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _pickImages,
                child: Text('Pick Images'),
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
                onPressed: () {
                  // Handle form submission
                  String name = _nameController.text;
                  String model = _modelController.text;
                  List<String> imagePaths =
                      _selectedImages.map((File image) => image.path).toList();

                  // Perform desired actions with the collected data
                  // ...
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
