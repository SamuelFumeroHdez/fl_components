import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        child: Column(
          children: const [
            CustomInputField()
          ]
        ),
      )
      );
  }
}