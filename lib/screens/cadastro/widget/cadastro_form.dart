import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroForm extends StatefulWidget {
  const CadastroForm({super.key});

  @override
  State<CadastroForm> createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  @override
  Widget build(BuildContext context) {
    List<String> regions = ['Meio-Norte', 'Sertão', 'Agreste', 'Zona da Mata'];
    String? selectedRegion;

    const space = SizedBox(height: 15);
    TextEditingController foodController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController namePassaroController = TextEditingController();
    TextEditingController namePessoaController = TextEditingController();
    TextEditingController cidadePessoaController = TextEditingController();

    return SizedBox(
      width: 250,
      child: Center(
        child: Column(
          children: [
            Form(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField(
                    hint: const Text('Selecione a região'),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    value: selectedRegion,
                    items: regions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedRegion = value;
                      });
                    },
                  ),
                  space,
                  TextFormField(
                    controller: namePassaroController,
                    decoration: InputDecoration(
                      labelText: 'Nome do Pássaro',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Digite o nome do Pássaro";
                      }
                      return null;
                    },
                  ),
                  space,
                  TextFormField(
                    controller: foodController,
                    decoration: InputDecoration(
                      labelText: 'Comidas',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Digite pelo menos uma comida do pássaro";
                      }
                      return null;
                    },
                  ),
                  space,
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      labelText: 'Descrição do pássaro',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                  ),
                  space,
                  TextFormField(
                    controller: namePessoaController,
                    decoration: InputDecoration(
                      labelText: 'Seu Nome',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Digite seu nome";
                      }
                      return null;
                    },
                  ),
                  space,
                  TextFormField(
                    controller: cidadePessoaController,
                    decoration: InputDecoration(
                      labelText: 'Sua Cidade',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Digite sua cidade";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
