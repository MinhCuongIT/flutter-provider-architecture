import 'package:flutter/material.dart';
import 'package:flutter_provider_architecture/ui/views/home_view.dart';
import 'package:flutter_provider_architecture/ui/views/login_view.dart';
import 'package:flutter_provider_architecture/ui/views/post_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginView());
      case '/post':
        return MaterialPageRoute(builder: (_) => PostView());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}.'),
            ),
          ),
        );
    }
  }
}
