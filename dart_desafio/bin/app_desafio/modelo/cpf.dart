import './cliente.dart';

class CPF {
  late String value;
  late Cliente cliente;

  CPF(String value) {
    setCPF = value;
  }

  String get getCPF => value;
  String get getCPFClient => cliente.getClientFullName;

  set setCPF(String text) {
    String newText = text.replaceAll(".", "");
    newText = newText.replaceAll("-", "");

    if (newText.length == 11) {
      value = text;
    } else {
      value = "000.000.000-00";
      print("atenção: CPF incompleto! Valor padrão inserido.");
    }
  }

  set setCPFCliente(Cliente novoCliente) {
    cliente = novoCliente;
  }

  @override
  String toString() {
    return "CPF: $value | Nome do Cliente: ${cliente.getClientFullName}";
  }
}
