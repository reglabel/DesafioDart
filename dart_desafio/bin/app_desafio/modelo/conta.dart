import './cpf.dart';

class Conta {
  late CPF cpf;
  late String numeroAgencia;
  late String numeroConta;
  late double saldo;

  Conta(this.cpf, String numeroAgencia, String numeroConta, this.saldo) {
    setContaNumAgencia = numeroAgencia;
    setContaNumConta = numeroConta;
  }

  String get getContaCPF => cpf.getCPF;
  String get getContaNumAgencia => numeroAgencia;
  String get getContaNumConta => numeroConta;
  double get getContaSaldo => saldo;

  set setContaCPF(CPF newCPF) {
    cpf = newCPF;
  }

  set setContaNumAgencia(String text) {
    if (text.length == 4) {
      numeroAgencia = text;
    } else {
      numeroAgencia = "0000";
      print(
          "atenção: Número da Agência deve possuir 4 dígitos! Valor padrão inserido.");
    }
  }

  set setContaNumConta(String text) {
    if (text.length == 3) {
      numeroConta = text;
    } else {
      numeroConta = "000";
      print(
          "atenção: Número da Conta deve possuir 3 dígitos! Valor padrão inserido.");
    }
  }

  set setContaSaldo(double valor) {
    saldo = valor;
  }

  @override
  String toString() {
    return "${cpf.getCPF} | $numeroAgencia $numeroConta $saldo";
  }
}
