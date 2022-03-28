import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      onChanged: (value){
        print(value);
      },
      validator: (value){
        if(value==null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Nombre del usuario',
        labelText: 'Nombre',
        helperText: 'Solo letras',
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: Icon(Icons.group_outlined),
        icon: Icon(Icons.assignment_ind_outlined),
      ),
    );
  }
}