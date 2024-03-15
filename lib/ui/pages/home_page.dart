import 'dart:js';

import 'package:aula03/bloc/calcular_combustivel_bloc.dart';
import 'package:aula03/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    // Quando o nome do objeto começa com underline. indica que é privado
    final _calcBloc = CalcularCombustivelBloc(context);
    return Placeholder(
      child: Scaffold(
          appBar: AppBar(title: const Row(
            children: [
              Icon(Icons.calculate_rounded, color: Colors.white, size: 36),
              SizedBox(width: 8),
              Text('Etanol x Gasolina',
                style:
                TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 21,
                    color: Colors.white
                ),
              ),
            ],
          ),
            backgroundColor: Color(0xFF136066),
          ),
          // Botão que fica no canto inferior direito
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() { _calcBloc.calcular(); });
              },
            child: const Icon(Icons.local_gas_station_outlined),
          ),
          body: Column(
            children: [
              CampoTexto(_calcBloc.gasolinaController,'Gasolina', 'R\$'),
              CampoTexto(_calcBloc.etanolController, 'Etanol', 'R\$'),
              ElevatedButton(
                  onPressed: () {
                    setState(() { _calcBloc.calcular(); });
                  },
                  child: Text('Calcular')
              ),
              Text(_calcBloc.resultado, style: TextStyle(
                fontSize: 31,
                color: Colors.black87,
                fontWeight: FontWeight.bold
              ),),
            ],
          )
      ),
    );
  }
}