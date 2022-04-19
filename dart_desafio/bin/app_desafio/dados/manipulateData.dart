import 'dart:io';
import 'dart:async';
import 'dart:convert';
import '../modelo/conta.dart';
import '../modelo/cpf.dart';

//TUDO ERRADO -> REFAZER DPS

Stream<List> abrirArquivo(String caminho) {
  final File file = new File("$caminho");
  Stream<List> inputStream = file.openRead();
  return inputStream;
}

void listarContas() {
  Stream<List> inputStream = abrirArquivo("./app_desafio/dados/contas.csv");
  inputStream
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()) // Convert stream to individual lines.
      .listen((String line) {
    // Process results.

    List row = line.split(';'); // split by comma

    String agencia = row[0];
    String conta = row[1];
    String cpf = row[2];
    String saldo = row[3];

    Conta contaDaVez = Conta(CPF(cpf), agencia, conta, double.parse(saldo));
    print(contaDaVez.toString());
  }, onDone: () {
    print('File is now closed.');
  }, onError: (e) {
    print(e.toString());
  });
}
