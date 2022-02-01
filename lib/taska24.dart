import 'package:flutter/material.dart';
class ThemeVidj extends StatelessWidget {
  const ThemeVidj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Georgia',
        splashColor: Colors.orange,
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange,
        ).copyWith(
          secondary: Colors.green,
        ),
        textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
            headline6: TextStyle(fontSize: 12.0, fontFamily: 'Hind'),
            bodyText2: TextStyle(color: Colors.purple)),
      ),
      home: ThemeScre(),
    );
  }
}
class ThemeScre extends StatefulWidget {
  const ThemeScre({Key? key}) : super(key: key);

  @override
  _ThemeScreState createState() => _ThemeScreState();
}

class _ThemeScreState extends State<ThemeScre> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column (children: [
              SizedBox(height: 50,),
              const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/dart-logo 1.png')),),
              SizedBox(height: 20,),
              Text('введите номер телефона', style: Theme.of(context).textTheme.headline1),
              SizedBox(height: 20,),
              const SizedBox(width: 300,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'номер телефона',
                  ),
                ),
              ),
              SizedBox(height: 20,),
               SizedBox(width: 300,
                child: TextField(
                  style: Theme.of(context).textTheme.headline1,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'пароль',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(width: 154, height: 55, child:
              ElevatedButton(onPressed: () {},
                child: Text('Войти',
                   style: Theme.of(context).textTheme.bodyText2,),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              )
              ),
              SizedBox(height: 55,),
              InkWell(child: const Text('Регистрация',), onTap: () {}),
              SizedBox(height: 20,),
              InkWell(child: Text('Забыли пароль?',
                style: Theme.of(context).textTheme.bodyText1,),
                onTap: () {}),
            ],),
          )
    );

  }
}
