import 'package:flutter/material.dart';
import 'package:rap_training/constants/mocked_values.dart';
import 'package:rap_training/constants/audio_url.dart';
import 'package:rap_training/pages/freestyle_training_page.dart';
import 'package:rap_training/utils/navigation.dart';
import 'package:rap_training/widgets/speed_selector_widget.dart';
import 'package:rap_training/widgets/start_button_widget.dart';

// O evento terá pessoas que tocam beat recebendo muito mais pelo melhor beat
// 2 DJ, 2 rappers, 1 musica toca, 2 pessoas cantam, outra musica toca,
// outras 2 pessoas cantam
// Ja entra tocando os q a pessoa gostou

// Voce que quer cantar, cante usando beat de alguem e quem quer escrever recebe pelo sucesso da letra (quanto mais pessoas usarem CPM)
// Terá uma musica, uma letra e uma gravacao, isso gera uma musica.
// voce será um dos 3 e receberá pelo sucesso da sua musica

// Salvar as palavras e botar a e a batida, a pesssoa vai enxergar
// igual o 'criar story do instagram'

// Em algum lugar deve ter um buffer carregar uns 3 audios na frente pra nao
// parar de tocar toda hora

//Mais tarde permitir videos

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12),
              child: Text(
                '''Selecione o tempo em segundos para a outra palavra
                \nSelecionar dois numeros irá somar a duração''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
            SpeedSelector(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: StartButton(onTap: () {
        push(
            context,
            FreeStyleTrainingPage(
              songUrl: mp3url,
              wordList: listaDePalavrasMockadas,
            ));
      }),
    );
  }
}