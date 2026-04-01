import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: PaginaInicial(), debugShowCheckedModeBanner: false));
}

class PaginaInicial extends StatefulWidget {
  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  //diz que minha classe é um atela apartir do StatelessWidget
  List<Aluno> alunos = []; //Mostrar a lista no ListView
  
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("Filipe App"),
        leading: Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 28, 221, 125),
      ),

      body: Center(
        child: ListView.builder(
          itemCount: alunos.length, //pagamos o tamanho da lista alunos
          itemBuilder: (context, index) { //index é o i do for (contador)
            return Text("Item: " + alunos[index].nome.toString());
          },
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push( 
            context,
            MaterialPageRoute(builder: (context) => FormularioCadastro()),
          ).then((aluno) {

            setState(() {
              alunos.add(
                aluno
              ); // adicionei o aluno recém criado na lista de alunos
            });
           //adicionei o aluno recente que foi criado na lista de alunos
            debugPrint("informação recebida:" + aluno.nome.toString());
          });
        },

        child: Icon(Icons.add),
      ),
    );
  }
}

////////////////////OUTRA TELA////////////////////////

class FormularioCadastro extends StatelessWidget {
  @override //sobreescreve a função stetelles
  Widget build(BuildContext context) {
    TextEditingController nome = TextEditingController();
    TextEditingController telefone = TextEditingController();
    TextEditingController matricula = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario de Cadastro"),
        backgroundColor: const Color.fromARGB(255, 42, 208, 214),
      ),

      body: Center(
        child: ListView(
          padding: EdgeInsets.all(64.0),
          children: [
            Container(
              margin: EdgeInsets.all(12.0),
              child: TextField(controller: nome,
                decoration: InputDecoration(
                  labelText: "Digite seu nome",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(12.0),
              child: TextField( controller: telefone,
                decoration: InputDecoration(
                  labelText: "Telefone",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(12.0),
              child: TextField(controller: matricula,
                decoration: InputDecoration(
                  labelText: "Matricula",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),

                onPressed: () {

                  if (nome.text != "" &&
                   telefone.text != "" &&
                    matricula.text != "" ) {

                      Aluno aluno = Aluno(nome.text, telefone.text, matricula.text);
                    Navigator.pop(context, aluno);

                  } else {
                    debugPrint("Preencha todos os campos");
                  }
                },
                
                child: Text("SALVAR"),
              
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Aluno {
  String nome;
  String telefone;
  String matricula;

  Aluno(this.nome, this.telefone, this.matricula);
}