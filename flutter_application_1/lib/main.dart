import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: PaginaInicial(),
  debugShowCheckedModeBanner: false ,));
}


class PaginaInicial extends StatelessWidget {
  //diz que minha classe é um atela apartir do StatelessWidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Filipe App"),
    leading: Icon(Icons.menu),
    centerTitle: true,
    backgroundColor: const Color.fromARGB(255, 28, 221, 125),
    ),

    body: Center(
      child: ListView(
        children: [
          Center(child: Text("Oi")),
          Center(child: Text("Oii")),
          Text("Oiii"),
          Text("Oiiii"),
          Text("Oiiiii"),
          Text("Oi"),
          Text("Oii"),
          Text("Oiii"),
          Text("Oiiii"),
          Text("Oiiiii"),
          Text("Oi"),
          Text("Oii"),
          Text("Oiii"),
          Text("Oiiii"),
          Text("Oiiiii"),
          Text("Oi"),
          Text("Oii"),
          Text("Oiii"),
          Text("Oiiii"),
          Text("Oiiiii"),
          Text("Oi"),
          Text("Oii"),
          Text("Oiii"),
          Text("Oiiii"),
          Text("Oiiiii"),
          Text("Oi"),
          Text("Oii"),
          Text("Oiii"),
          Text("Oiiii"),
          Text("Oiiiii"),
          Text("Oi"),
          Text("Oii"),
          Text("Oiii"),
          Text("Oiiii"),
          Text("Oiiiii"),
        ],
      ),
    ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => FormularioCadastro(),
      ));
    },
    child: Icon(Icons.add),
    ),


    );
  }
}



////////////////////OUTRA TELA////////////////////////

class FormularioCadastro extends StatelessWidget {
  @override //sobreescreve a função stetelles
  Widget build(BuildContext context)  {
    return Scaffold(appBar: AppBar(title: Text("Formulario de Cadastro"),
    backgroundColor: const Color.fromARGB(255, 42, 208, 214),
    ),
    
    body: Center(
  child: ListView(
    padding: EdgeInsets.all(64.0),
    children: [
      
      Container(
        margin: EdgeInsets.all(12.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: "Digite seu nome",
            border: OutlineInputBorder(),
          ),
        ),
      ),

      
      
      Container(
        margin: EdgeInsets.all(12.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: "Telefone",
            border: OutlineInputBorder(),
          ),
        ),
      ),



      Container(
        margin: EdgeInsets.all(12.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: "Matricula",
            border: OutlineInputBorder(),
          ),
        ),
      )
    ],
  ),

  
    ),
    );
  }
  
}