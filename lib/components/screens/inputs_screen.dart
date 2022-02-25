import 'package:flutter/material.dart';

import 'package:components_app/components/widgets/widgets.dart';


class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 10
          ),
          child: Column(
            children: const[
              SizedBox(height: 25,),
              CustomInputField( 
                labelText: 'Name', 
                hintText: 'Name',
                focus: true,
                icon: Icons.person,
              ),
              SizedBox(height: 20,),
              CustomInputField( 
                labelText: 'Lastname', 
                hintText: 'Lastname', 
                icon: Icons.person_outline
              ),
              SizedBox(height: 20,),
              CustomInputField( 
                labelText: 'Email', 
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 20,),
              CustomInputField( 
                labelText: 'Password', 
                hintText: 'Password',
                obscureText: true,
                icon: Icons.password,
              ),
            ],
          ),
        ),
      ),
      // This is the same as above
      // body: SingleChildScrollView(
      //   padding: const EdgeInsets.symmetric(
      //       horizontal: 20, vertical: 10
      //   ),
      //   child: Column(
      //     children: [
      //       TextFormField()
      //     ],
      //   ),
      // ),
    );
  }
}

