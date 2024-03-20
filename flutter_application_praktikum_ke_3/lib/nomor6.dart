import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String?>> data = [
    {
      'name': 'Ter Stegen',
      'hobby': 'Sepak Bola, Lari',
      'imagePath':
          'https://img.inews.co.id/media/1200/files/inews_new/2023/04/30/Reuters_Ter_Stegen.JPG'
    },
    {
      'name': 'Lionel Messi',
      'hobby': 'Sepak Bola, Jogging',
      'imagePath':
          'https://img.olympics.com/images/image/private/t_s_w960/t_s_16_9_g_auto/f_auto/primary/wq4l6w3ftzn6gequts2v',
          
    },

     {
      'name': 'Cristiano Ronaldo',
      'hobby': 'Sepak Bola, Lari',
      'imagePath':
          'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt943c9f051f0087c0/639f1d7d03c7a66c44782060/GettyImages-1245184407.jpg?auto=webp&format=pjpg&width=3840&quality=60',
          
    },

    {
      'name': 'Neymar Jr',
      'hobby': 'Sepak Bola, Makan',
      'imagePath':
          'https://tmssl.akamaized.net/images/foto/galerie/neymar-brazil-2023-1694521247-116480.jpg?lm=1694521259',
          
    },
    
    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List of People'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Image.network(data[index]
                    ['imagePath']!), // Add "!" to assert that it's not null
                title: Text(data[index]['name']!),
                subtitle: Text(data[index]['hobby']!),
              ),
            );
          },
        ),
      ),
    );
  }
}