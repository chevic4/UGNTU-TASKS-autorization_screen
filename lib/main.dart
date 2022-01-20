import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: const Color(0xff8b8e93),width: 2));

    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column (children: [
            SizedBox(height: 50,),
            SizedBox(width: 110, height: 84, child: Placeholder(),),
            SizedBox(height: 20,),
            Text('введите номер телефона',
              style: TextStyle (fontSize: 14, color: Color.fromRGBO(0, 0, 8, 0.5)),),
            SizedBox(height: 20,),
            const SizedBox(width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.cyanAccent,
                enabledBorder: borderStyle,
                focusedBorder: borderStyle,
                disabledBorder: borderStyle,
                labelText: 'phone',

              ),
              ),
            ),
            SizedBox(height: 20,),
            const SizedBox(width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(
                      221, 243, 233, 0.9019607843137255),
                  labelText: 'password',
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  disabledBorder: borderStyle,
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(width: 300, height: 55, child:
              ElevatedButton(onPressed: () {},
                  child: Text('enter'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF007908),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
              )
            ),
            SizedBox(height: 65,),
            InkWell(child: const Text('registraction',
              style: TextStyle (fontSize: 14, color: Color.fromRGBO(
                  1, 40, 155, 0.9019607843137255)),), onTap: () {}),
            SizedBox(height: 20,),
            InkWell(child: const Text('забыли пароль?',
              style: TextStyle (fontSize: 14, color: Color.fromRGBO(
                  1, 155, 83, 0.9019607843137255)),), onTap: () {}),
          ],),
        )
      ),
    );
  }
}
