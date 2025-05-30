import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'verify_email_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  bool isLoading = false;

  Future<void> signUpUser() async {
    setState(() => isLoading = true);
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final username = usernameController.text.trim();

    try {
      final response = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
      );

      final userId = response.user?.id;

      if (userId != null) {
        await Supabase.instance.client.from('profiles').insert({
          'id': userId,
          'username': username,
          'email': email,
        });

        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const VerifyEmailPage()),
          );
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: signUpUser,
                    child: const Text('Register'),
                  ),
          ],
        ),
      ),
    );
  }
}
