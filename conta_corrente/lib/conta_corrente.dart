// Para os clientes as informações importantes são: nome e cpf
// Para as contas são:  numero da agência, número da conta, o cliente e o saldo
//Fazer funçoes para cada Case do Switch pode ser que facilite

import 'dart:io';

void main(List<String> args) {
  //Declarando As Variaveis
  var contaCorrente;
  print("Selecione uma das opçoes ");
  //Fazendo o menu
  switch (contaCorrente) {
    //Incluir contas
    case 1:
      print("Dados Cliente");
      print("--------------------------------------");
      break;

    //Incluir Contas
    case 2:
      print("Dados Da Conta");
      print("--------------------------------------");
      break;

    //Lista Cliente
    case 3:
      print("+------------------------------------+");
      print("\tListagem De Cliente");
      print("+------------------------------------+");
      break;

    //Listar Contas
    case 4:
      print("+------------------------------------+");
      print("\tListagem De Contas");
      print("+------------------------------------+");
      break;

    //Realizar Deposito
    case 5:
      break;

    //Realizar Saque
    case 6:
      break;
    //sair
    default:
  }
}
