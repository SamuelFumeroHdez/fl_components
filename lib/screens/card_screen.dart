import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name: 'Un equipazo', imageUrl: 'https://www.fcbarcelonanoticias.com/uploads/s1/12/88/33/5/jugadores-barc-a-copy_4_641x361.jpeg'),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://a4.espncdn.com/combiner/i?img=%2Fphoto%2F2019%2F0423%2Fr533000_1296x729_16%2D9.jpg&w=1140&cquality=40&format=jpg'),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://album.mediaset.es/eimg/10000/2021/10/19/clipping_6Czu5i_ec2a.jpg?w=1200')
        ],
      )
    );
  }
}

