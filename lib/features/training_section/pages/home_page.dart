import 'package:flutter/material.dart';
import 'package:rap_training/features/training_section/constants.dart/audio_url.dart';
import 'package:rap_training/pages/singer_page.dart';
import 'package:rap_training/utils/navigation.dart';
// O evento terá pessoas que tocam beat recebendo muito mais pelo melhor beat
// 2 DJ, 2 rappers, 1 musica toca, 2 pessoas cantam, outra musica toca,
// outras 2 pessoas cantam
// Ja entra tocando os q a pessoa gostou

// Voce que quer cantar, cante usando beat de alguem e quem quer escrever recebe pelo sucesso da letra (quanto mais pessoas usarem CPM)
// Terá uma musica, uma letra e uma gravacao, isso gera uma musica.
// voce será um dos 3 e receberá pelo sucesso da sua musica

// Salvar as palavras e botar a e a batida, a pesssoa vai enxergar igual o criar do instagram

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: StartButton(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12),
              child: Text(
                'Selecione o tempo em segundos para a outra palavra\nSelecionar dois numeros irá somar a duração',
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
    );
  }
}

class StartButton extends StatefulWidget {
  const StartButton({Key? key}) : super(key: key);

  @override
  _StartButtonState createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.blue, // Button color
        child: InkWell(
          splashColor: Colors.blueAccent, // Splash color
          onTap: () {
            push(context, SingerPage(songUrl: mp3url));
          },
          child: SizedBox(
              width: 56 * 2,
              height: 56 * 2,
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 56,
              )),
        ),
      ),
    );
  }
}

class SpeedSelector extends StatefulWidget {
  const SpeedSelector({Key? key}) : super(key: key);

  @override
  _SpeedSelectorState createState() => _SpeedSelectorState();
}

class _SpeedSelectorState extends State<SpeedSelector> {
  List<bool> selectedList = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        onPressed: (idx) {
          setState(() {
            selectedList[idx] = !selectedList[idx];
          });
        },
        isSelected: selectedList,
        children: [
          Text(
            '1',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          Text(
            '2',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          Text(
            '3',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          Text(
            '4',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
        ],
      ),
    );
  }
}
