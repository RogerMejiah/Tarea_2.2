import 'package:flutter/material.dart';
import 'package:mylogin/src/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final nombreController = TextEditingController();
final contraseniaController = TextEditingController();
final formKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 30),
              const CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/sistemas-logo.png'),
              ),
              const SizedBox(height: 17),
              const Text(
                'MyLogin',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              LoginForm(
                label: 'Ingrese su usuario',
                icon: Icons.person,
                controller: nombreController,
                validator: (value) {
                  if (value != 'rfmejiah@unah.hn') {
                    return 'Ingrese un usuario válido.';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              LoginForm(
                label: 'Ingrese su contraseña',
                icon: Icons.password,
                obscureText: true,
                mostrarBoton: true,
                controller: contraseniaController,
                validator: (value) {
                  if (value != '20202000674') {
                    return 'Ingrese una contraseña válida.';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow[700]),
        ),
        onPressed: () {
          getInputValue();
        },
        child: const Text(
          'Iniciar Sesión',
          style:
              TextStyle(color: Color(0xFF0D47A1), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  getInputValue() {
    if (formKey.currentState!.validate()) {
      //mandar a nueva pagina
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      const snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: Text('Verifique sus datos.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
