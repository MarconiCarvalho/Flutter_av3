
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:shared_preferences/shared_preferences.dart';



class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  bool ocultarSenha = true;

  IconData exibirIcon = Icons.visibility;
  IconData ocultar = Icons.visibility_off;

  void exibir() {
    setState(() {
      ocultarSenha = !ocultarSenha;
    });
  }

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Criar Conta"),
          backgroundColor:Color.fromARGB(121, 15, 48, 196),
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             
              const SizedBox(
                height: 48,
              ),
              
              SizedBox(
                width: largura - 32,
                height: 48,
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    label: const Text("E-mail"),
                    hintText: "Digite seu e-mail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 24,
              ),
             
              SizedBox(
                width: largura - 32,
                height: 48,
                child: TextField(
                  controller: _senhaController,
                  obscureText: ocultarSenha,
                  decoration: InputDecoration(
                    
                    suffixIcon: IconButton(
                      icon: Icon(ocultarSenha ? exibirIcon : ocultar),
                      onPressed: exibir,
                    ),
                    label: const Text("Senha"),
                    hintText: "Digite sua senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 24,
              ),
             
              ElevatedButton(
                onPressed: () async {
                 Navigator.pushNamed(context, '/home' );
                
                },
                child: Text(
                  "Criar Conta e Entrar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(largura - 32, 48),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue
                  ),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
