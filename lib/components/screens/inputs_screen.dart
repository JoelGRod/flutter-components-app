import 'package:flutter/material.dart';

import 'package:components_app/components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Test',
      'lastname': 'Testing',
      'email': 'test@mail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Name',
                  hintText: 'Name',
                  focus: true,
                  icon: Icons.person, 
                  formField: 'name', 
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                    labelText: 'Lastname',
                    hintText: 'Lastname',
                    icon: Icons.person_outline,
                    formField: 'lastname', 
                    formValues: formValues,
                    ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.email_outlined,
                  formField: 'email', 
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Password',
                  obscureText: true,
                  icon: Icons.password,
                  formField: 'password', 
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      // Hide keyboard after click
                      FocusScope.of(context).requestFocus(FocusNode());
                      // Form State actions (form Key)
                      if (!formKey.currentState!.validate()) {
                        print('Invalid form');
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Send'))))
              ],
            ),
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
