import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('Soy un título'),
            subtitle: Text('Ullamco adipisicing excepteur et officia fugiat duis enim incididunt dolore fugiat ut tempor esse excepteur. Laboris eu nostrud sunt sunt non.'),
          ),
        
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text('OK'),
                )
              ],

            ),
          ),
        ],
      ),
    );
  }
}