import 'package:flutter/material.dart';

class NewAddressScreen extends StatefulWidget {
  const NewAddressScreen({super.key});

  @override
  State<NewAddressScreen> createState() => _NewAddressScreenState();
}

class _NewAddressScreenState extends State<NewAddressScreen> {
  final formKey = GlobalKey<FormState>(); // Key to identify the form
  TextEditingController txtName = TextEditingController();
  TextEditingController txtNumber = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtLandmark = TextEditingController();
  TextEditingController txtState = TextEditingController();
  TextEditingController txtCity = TextEditingController();
  TextEditingController txtPincode = TextEditingController();
  String? addressType;
  bool isChecke = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.cyan,
        backgroundColor: Colors.white,
        title: const Text(
          "Add New Address",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: txtName,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
               SizedBox(height: MediaQuery.sizeOf(context).height*0.02),

              TextFormField(
                controller: txtNumber,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return 'Please enter a valid phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02),

              TextFormField(
                controller: txtAddress,
                decoration: const InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_on),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02),

              TextFormField(
                controller: txtLandmark,
                decoration: const InputDecoration(
                  labelText: 'Landmark',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.landscape),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your state';
                  }
                  return null;
                },
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02),

              // State field
              TextFormField(
                controller: txtState,
                decoration: const InputDecoration(
                  labelText: 'State',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.map),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your state';
                  }
                  return null;
                },
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02),

              TextFormField(
                controller: txtCity,
                decoration: const InputDecoration(
                  labelText: 'City/District',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_city),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your city';
                  }
                  return null;
                },
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02),

              TextFormField(
                controller: txtPincode,
                decoration: const InputDecoration(
                  labelText: 'Pincode',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.code),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your pincode';
                  } else if (!RegExp(r'^[0-9]{6}$').hasMatch(value)) {
                    return 'Please enter a valid pincode';
                  }
                  return null;
                },
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02),
              const Text('Address Type',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                      title: const Text('Home'),
                      value: 'Home',
                      groupValue: addressType,
                      onChanged: (value) {
                        setState(() {
                          addressType = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                      title: const Text('Office'),
                      value: 'Office',
                      groupValue: addressType,
                      onChanged: (value) {
                        setState(() {
                          addressType = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.blue,
                    checkColor: Colors.white,
                    value: isChecke,
                    onChanged: (value) {
                      setState(() {
                        isChecke = value ?? true;
                      });
                    },
                  ),
                  const Text("Use as defualt address"),
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                ),
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Processing Data'),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
