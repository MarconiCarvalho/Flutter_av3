import 'dart:ui';

import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
class CardPageState extends StatefulWidget {
  const CardPageState({super.key});

  @override
  State<CardPageState> createState() => __CardPageStateState();
 }
class __CardPageStateState extends State<CardPageState> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: 
        Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Column(
           
              children: [
        
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),         
                  height: 700,
                
                  child: const SingleChildScrollView(
                    
                    child: Wrap(
                        direction: Axis.vertical,
                   children: [

                    CustomCard(

                        title:'Secador de Cabelo',
                        image: 'assets/Itens/secadordecabelo.png',
                      ),
                    CustomCard(
                        title: 'TV Philips',
                        image: 'assets/Itens/tvphilips32.png',
                      ),
                      CustomCard(
                        title: 'TV Samsung',
                        image: 'assets/Itens/tvphilips32.png',
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
                    child: Wrap(
                        direction: Axis.vertical,
                   children: [

                    CustomCard(
                        title: 'Secador de Cabelo',
                        image: 'assets/Itens/secadordecabelo.png',
                      ),
                    CustomCard(
                        title: 'TV Samsung',
                        image: 'assets/Itens/tvphilips32.png',
                      ),
                      CustomCard(
                        title: 'TV Philips',
                        image: 'assets/Itens/tvphilips32.png',
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
            height: 170,
            width: 170,
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