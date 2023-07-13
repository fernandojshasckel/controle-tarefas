import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Projeto'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 1),
        child: ListView(
          children: const [
            Task(
                'Aprender Flutter',
                'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
                3),
            Task(
                'Andar de Bike',
                'https://images-na.ssl-images-amazon.com/images/I/71di12HgP5L._AC_UL210_SR210,210_.jpg',
                2),
            Task(
                'Meditar',
                'https://www.essentialnutrition.com.br/conteudos/wp-content/uploads/2014/09/como-meditar-750x750.jpg',
                5),
            Task(
                'Ler',
                'https://www.psicologosberrini.com.br/wp-content/uploads/como-a-leitura-e-capaz-de-ajudar-no-tratamento-de-ansiedade-e-estresse-2-1024x538.jpg',
                1),
            Task(
                'Jogar',
                'https://gamehall.com.br/wp-content/uploads/2020/08/jogando-no-pc.jpg',
                1),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
