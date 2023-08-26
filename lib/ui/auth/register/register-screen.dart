import 'package:flutter/material.dart';
import 'package:flutter_team/ui/auth/login/widgets/custom_textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            CustomTextfield(label: 'Введите вашу Ф.И.О.'),
            SizedBox(
              height: 15,
            ),
            CustomTextfield(label: 'Введите название продукта'),
            SizedBox(
              height: 15,
            ),
            CustomTextfield(label: 'Введите E-mail адрес'),
            SizedBox(
              height: 15,
            ),
            CustomTextfield(label: 'Введите свой адрес'),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffEAEDF0))),
                onPressed: () {},
                child: const Text(
                  "Войти",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.blue, width: 2)),
                onPressed: () {},
                child: const Text(
                  "Подать заявку",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ));
  }
}
