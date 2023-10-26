import 'package:contect_list/pages/forgot-page.dart';
import 'package:flutter/material.dart';

import '../pages/list-page.dart';
import '../pages/register-page.dart';

class LoginWidget extends StatefulWidget{
  @override
  LoginWidgetState createState() {
    return LoginWidgetState();
  }
}
class LoginWidgetState extends State {
  String email = '';
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF3E4050),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 350,
                  height: 350,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color.fromRGBO(164, 195, 208, 0.05))
                  )
                ),
                Container(
                  width: 300,
                  height: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color.fromRGBO(164, 195, 208, 0.05))
                  )
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color.fromRGBO(164, 195, 208, 0.18))
                  )
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: const Color(0xFF333443),
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color.fromRGBO(164, 195, 208, 0.05))
                  )
                ),
                Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color.fromRGBO(164, 195, 208, 0.05))
                    )
                ),
                const Icon(
                  Icons.account_circle_rounded,
                  size: 170,
                  color: Color(0xFF333443),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text(
                'Por favor faça login para continuar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
             Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 25.0, bottom: 2.0, left: 25.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (text) {email = text;},
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Insira seu Email',
                  hintStyle: const TextStyle(
                    color: Color(0xFF7F8C99),
                  ),
                  labelText: 'Email',
                  labelStyle: const TextStyle(
                    color: Color(0xFF7F8C99),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF333443),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Colors.transparent ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF7F8C99)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, right: 25.0, bottom: 2.0, left: 25.0),
              child: TextField(
                onChanged: (text) {password = text;},
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Insira sua Senha',
                  hintStyle: const TextStyle(
                    color: Color(0xFF7F8C99),
                  ),
                  labelText: 'Senha',
                  labelStyle: const TextStyle(
                    color: Color(0xFF7F8C99),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF333443),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Colors.transparent ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF7F8C99)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, right: 25.0, bottom: 10.0, left: 25.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => ForgotPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.all(-20)
                  ),
                  child: const Text(
                    'Esqueci a senha',
                    style:  TextStyle(
                      color: Color(0xFF5FCCFF),
                    ),
                  )
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF6E64D4),
                        Color(0xFF5AA9FC)
                      ]
                    )
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                      padding: const EdgeInsets.only(top: 25.0, right: 150.0, bottom: 25.0, left: 150.0),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    onPressed: () {
                      if(email == 'user@test.com' && password == 'dev123') {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => ListPage()),
                        );
                      }
                    },
                    child: const Text('Entrar')),
                ),
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Não tem uma conta? ',
                  style:  TextStyle(
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onSurface: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.all(-20)
                  ),
                  child: const Text(
                    'Crie uma.',
                    style:  TextStyle(
                      color: Color(0xFF5FCCFF),
                    ),
                  )
                )
              ],
            )
          ],
        ),
    );
  }
}