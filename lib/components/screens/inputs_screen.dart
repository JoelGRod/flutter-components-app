import 'package:flutter/material.dart';

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
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) => print(value),
                validator: (value) {
                  if(value == null) return 'Field is required';
                  return value.length < 3 ? 'Minimun 3 chars' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'User Name',
                  labelText: 'Name',
                  helperText: 'Only Letters and whitespaces',
                  // counterText: '3 char',
                  // prefixIcon: Icon( Icons.person ),
                  suffixIcon: Icon( Icons.person_add ),
                  icon: Icon(Icons.person),
                  // Input Border style
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.only(
                  //     topRight: Radius.circular(10),
                  //     bottomLeft: Radius.circular(10)
                  //   )
                  // ),
                  // Change specific color to one of the input states
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //    color: Colors.indigo 
                  //   )
                  // )
                ),
              )
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