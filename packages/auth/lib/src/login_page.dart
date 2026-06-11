import 'package:auth/src/login_controller.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final controller = sl<LoginController>();

  @override
  Widget build(BuildContext context) {
    emailController.text = 'admin@test.com';
    passwordController.text = '123456';
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SizedBox(
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Senha'),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () async {
                  final response = await controller.login(
                    emailController.text,
                    passwordController.text,
                  );

                  debugPrint(response.userName);

                  if (context.mounted) {
                    context.go('/home');
                  }
                },
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
