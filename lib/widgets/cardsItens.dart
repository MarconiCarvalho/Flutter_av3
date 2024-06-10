import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CardsItens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),         
                  height: 700,
                
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Wrap(
                        direction: Axis.vertical,
                   children: [

                    CustomCard(
                        title: 'Secador de Cabelo',
                        image: 'assets/Itens/secadordecabelo.png',
                      ),
                    CustomCard(
                        title: 'Tv Philips',
                        image: 'assets/Itens/tvphilips32.png',
                      ),

                    CustomCard(
                        title: 'Tv Sansumg',
                        image: 'assets/Itens/tv.png',
                      ),
                    
                     
                   ]),
                ),
                ),]),
  
            Column(
                children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),         
                  height: 700,
                  
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Wrap(
                        direction: Axis.vertical,
                   children: [

                    CustomCard(
                        title: 'TV Philips',
                        image: 'assets/Itens/tvphilips32.png',
                      ),
                    CustomCard(
                        title: 'TV Sansumg',
                        image: 'assets/Itens/tv.png',
                      ),

                    CustomCard(
                        title: 'Secador de Cabelo',
                        image: 'assets/Itens/secadordecabelo.png',
                      ),                   
                   ]),
                ),
                ),
              ]
             ),
          ],
          
    )));
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String image;

  const CustomCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            image,
            height: 180,
            width: 180,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}