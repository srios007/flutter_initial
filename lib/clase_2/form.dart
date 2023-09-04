import 'package:basic_widgets/models/user.dart';
import 'package:basic_widgets/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _ageController = TextEditingController();
  late User _user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario de Prueba'),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nombre',
                    ),
                    controller: _nameController,
                    validator: (String? _) {
                      if (_nameController.text.isEmpty) {
                        return 'Por favor, rellena este campo';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: _lastnameController,
                    decoration: const InputDecoration(
                      labelText: 'Apellido',
                    ),
                  ),
                  TextFormField(
                    controller: _ageController,
                    decoration: const InputDecoration(
                      labelText: 'Edad',
                    ),
                  ),
                  CustomButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _user = User();
                          _user.name = _nameController.text;
                          _user.lastname = _lastnameController.text;
                          _user.age = int.parse(_ageController.text);
                          showDialog(
                            context: context,
                            builder: (_) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 8,
                              backgroundColor: Colors.white,
                              child: Column(
                                children: [
                                  Text(
                                    _user.name!,
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    _user.lastname!,
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '${_user.age!}',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      },
                      label: 'Imprimir datos')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
