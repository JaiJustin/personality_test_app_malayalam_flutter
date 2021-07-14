import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    print(resultScore);
    String resultText;
    if (resultScore <= 190) {
      resultText =
          'നിങ്ങളുടെ പഞ്ചേന്ദ്രിയങ്ങളുടെ  ശക്തി  വളരെ കൂടുതലായതിനാൽ ചുറ്റുമുള്ള കാര്യങ്ങൾ വളരെ പെട്ടെന്ന് തന്നെ ഗ്രഹിക്കാനുള്ള കഴിവ് നിങ്ങൾക്കുണ്ട് . കുറച്ച  ഉൾവലിവ്  നാണം എന്നിവ ഉള്ളവരായിരിക്കും. എല്ലാ കാര്യങ്ങളും ആഴത്തിൽ അറിയാൻ ശ്രമിക്കുകയും അതിനെപ്പറ്റി പഠനം  നടത്തുകയും എല്ലാം വളരെ പെട്ടന്ന് തന്നെ ഗ്രഹിക്കാൻ കഴിവുള്ളവരും ആയിരിക്കും ഇത്തരക്കാർ. ';
    } else if (resultScore >= 200 && resultScore <= 290) {
      resultText =
          'അപാരമായ ബുദ്ധിശക്തിയും ചിന്താശേഷിയും ഉള്ളവരാണ് നിങ്ങൾ . മറ്റുള്ളവർ ചിന്തിക്കുന്നതിൽ നിന്ന് വ്യത്യസ്തമായാണ്  നിങ്ങൾ ചിന്തിക്കുന്നത്  . നിരവധി കഴിവുകൾ ഉണ്ടെങ്കിലും സ്വയം അവയെ അംഗീകരിക്കുന്ന പ്രകൃതമല്ല. നല്ല ബുദ്ധിയുള്ളവരും വ്യത്യസ്ത  രീതിയിൽ ചിന്തിക്കുന്നവരുമാണ് നിങ്ങൾ .പലരും ഇടപെട്ടു പരിഹരിക്കാൻ കഴിയാത്ത പ്രശ്നങ്ങൾ പരിഹരിക്കാനുള്ള കഴിവ് നിങ്ങൾക്കുണ്ട്.';
    } else if (resultScore >= 300 && resultScore <= 390) {
      resultText =
          'നിങ്ങളുടെ കഴിവ് വേഗതയാണ് . വളരെ വേഗത്തിൽ എല്ലാ കാര്യങ്ങളും കൃത്യതയോടെ  ചെയ്യാൻ നിങ്ങളെക്കൊണ്ട്  സാധിക്കുന്നു. കൃത്യനിഷ്‌ഠമായി കാര്യങ്ങൾ ചെയ്യുകയും  നടത്തം, സംസാരം ,ജോലി ഇവയിൽ  വേഗതയുള്ളവരായിരിക്കും. എല്ലാ കര്യങ്ങളും ചടുലമായി ചെയ്യുന്ന വേഗതകൂടിയ ആൾക്കാരായിരിക്കും നിങ്ങൾ .നിങ്ങൾക്ക് വേഗതയുള്ളതുകൊണ്ടു തന്നെ ജോലികൾ വളെരെപെട്ടെന്നു ചെയ്തു തീർക്കുകയും അടുത്ത ജോലിയിലേക് പോകാൻ സാധിക്കുകയും ചെയ്യുന്നു. ';
    } else if (resultScore >= 400 && resultScore <= 490) {
      resultText =
          'നല്ല ബുദ്ധിയുള്ളവരാണ് , നല്ല നിരീക്ഷണം ഉള്ളവരാണ് , ആളുകളെ വിലയിരുത്താനും മനസ്സിലാക്കാനുമുള്ള അപാരശക്തിയാണ് പിന്നെ ഒരാളു കളവു പറയുന്നുണ്ടെങ്കിൽ പെട്ടെന്ന് മനസിലാക്കാൻ കഴിവുള്ളവരാണ് . ഒളിച്ചു വെച്ച് എന്തെങ്കിലും';
    } else if (resultScore >= 500 && resultScore <= 600) {
      resultText =
          'നല്ല ബുദ്ധിയുള്ളവരാണ് , നല്ല നിരീക്ഷണം ഉള്ളവരാണ് , ആളുകളെ വിലയിരുത്താനും മനസ്സിലാക്കാനുമുള്ള അപാരശക്തിയാണ് പിന്നെ ഒരാളു കളവു പറയുന്നുണ്ടെങ്കിൽ പെട്ടെന്ന് മനസിലാക്കാൻ കഴിവുള്ളവരാണ് . ഒളിച്ചു വെച്ച് എന്തെങ്കിലും';
    } else {
      resultText = 'some error for the score';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 9,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 7))
                ],
              ),
              child: ListView(
                children: [
                  Text(
                    resultPhrase,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                icon: Icon(Icons.replay_sharp),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  elevation: 10,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                label: Text('Restart Test'),
                onPressed: (resetHandler),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
