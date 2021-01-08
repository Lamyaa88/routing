import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    onGenerateRoute: Router.generateRoute,
    initialRoute: loginRoute,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade700,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: 300,
        ),
        TextField(),
        SizedBox(
          height: 30,
        ),
        TextField(),
        SizedBox(
          height: 30,
        ),
        FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, homeRoute);
            },
            child: Text("login")),
        FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, signInRoute);
            },
            child: Text("signIn")),
      ]),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
    );
  }
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
    );
  }
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Home());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => MyApp());
      case signInRoute:
        return MaterialPageRoute(builder: (_) => SignIn());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}

const String homeRoute = '/';
const String loginRoute = '/login';
const String signInRoute = '/signIn';
