import 'package:flutter/material.dart';

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PASAPORTE'),
        centerTitle: true,
      ),
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 67, 32, 70),
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(1),
              ),
              child: Image.asset(
                'assets/img1.jpg',
              ),
            ),
          ),
          const Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'PEPITO PEREZ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: Text('NAME')),
              Expanded(
                child: Text(
                  'COLOMBIANA',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: Text('NATIONALITY')),
              Expanded(
                child: Text(
                  '13 DE ABRIL',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: Text('DATE OF ISSUE')),
              Expanded(
                child: Text(
                  'COLOMBIA',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: Text('AUTHORITY')),
            ],
          )),
        ],
      ),
    );
  }
}
