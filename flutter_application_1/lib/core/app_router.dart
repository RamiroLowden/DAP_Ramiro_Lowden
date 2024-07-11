import 'package:flutter_application_1/Pantallas/pantalla_principal.dart';
import 'package:flutter_application_1/Pantallas/pantalla_logueo.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
  GoRoute(
    path: '/login',
    builder: ((context, state) => const LoginScreen())
  ),
  GoRoute(
    path: '/home/:usuario',
    builder: (context, state) {
        final usuario = state.pathParameters['usuario'] as String; // Obtén el valor del parámetro de la ruta
        return HomeScreen(usuario: usuario); // Pasa el valor del usuario a la página de inicio
      }
    )
]);