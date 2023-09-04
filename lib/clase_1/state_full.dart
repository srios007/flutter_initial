import 'package:basic_widgets/clase_2/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import 'state_less.dart';

class WidgetWithState extends StatefulWidget {
  const WidgetWithState({super.key});

  @override
  State<WidgetWithState> createState() => _WidgetWithStateState();
}

class _WidgetWithStateState extends State<WidgetWithState> {
  String name = 'Santiago Rios';
  int age = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: const Text('Widget with state'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      const StrongTextWidget(label: 'Nombre'),
                    Text(name),
                      const StrongTextWidget(label: 'Edad'),
                    Text('$age')
                  ],
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                    'https://crzycards.com/cdn/shop/products/HomeroSanchez_CCP_1024x.png?v=1649809444',
                  ),
                ),
              ],
            ),
            CustomButton(
              onPressed: () {
                setState(() {
                  name = 'Juan Perez';
                  age = 32;
                });
              },
              label: 'Cambiar datos',
            ),
            CustomButton(
              onPressed: () {
                setState(() {
                  name = 'Santiago Rios';
                  age = 22;
                });
              },
              label: 'Retornar estado inicial',
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormExample()),
                );
              },
              label: 'Ir al siguiente módulo',
            ),
          ],
        ),
      ),
    );
  }
}
