import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personalapp/repository/sample_repo.dart';

class Contact extends StatelessWidget {
  Contact({super.key});

  final nameController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(

          key: formkey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'First Name',
                  labelText: 'Your first name please',
                  icon: Icon(FontAwesomeIcons.person),
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                    return "Enter correct name";
                  } else {
                    return null;
                  }
                },
                // validator: (val){
                //   if(val.isEmpty){
                //
                //   }
                //     return 'First Name Cannot be null';
                //   }
                //   else{
                //   return null;
                // },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Phone',
                  labelText: 'Enter your phone',
                  icon: Icon(FontAwesomeIcons.spotify),
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                          .hasMatch(value!)) {
                    return "Enter correct phone";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  labelText: 'Enter your email',
                  icon: Icon(FontAwesomeIcons.person),
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                          .hasMatch(value!)) {
                    return "Enter correct phone";
                  } else {
                    return null;
                  }
                },
              ),
              // ),
              SizedBox(
                height: 20,
              ),
              // Checkbox(value: check1, onChanged: (bool? value){
              //   setState((){
              //     check1 = value;
              //   });
              // },
              // ),
              ElevatedButton(onPressed: () {
                // if(formkey.currentState!.validate()){
                //
                // }

                final sampleRepo = SampleRepo();
                sampleRepo.sampleApiCall();

              }, child: const Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
