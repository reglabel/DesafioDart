// Para os clientes as informações importantes são: nome e cpf
// Para as contas são:  numero da agência, número da conta, o cliente e o saldo
//Fazer funçoes para cada Case do Switch pode ser que facilite

import 'dart:io';

void main(List<String> args) {
  //Booleano para fazer um loop infinito, caso falso: encerra o loop que mostra o menu de escolha
  bool loop = true;
  while (loop) {
  //Declarando As Variaveis
  var contaCorrente;
  //Mostrar opções disponíveis
  print("Selecione uma das opçoes 1- Dados Cliente, 2- Dados Da Conta, 3- Listagem de Cliente, 4- Listagem de Contas, 5- Realizar Deposito, 6- Realizar Saque, 9- Sair da Aplicação ");
  //Pegar leitura do teclado
  String? choice = stdin.readLineSync();
  //var contaCorrente: Recebe o input do Usuário
  contaCorrente = choice;
  //Fazendo o menu
  switch (contaCorrente) {
    //Incluir contas
    case "1":
      print("Dados Cliente");
      print("--------------------------------------");
      break;

    //Incluir Contas
    case "2":
      print("Dados Da Conta");
      print("--------------------------------------");
      break;

    //Lista Cliente
    case "3":
      print("+------------------------------------+");
      print("\tListagem De Cliente");
      print("+------------------------------------+");
      break;

    //Listar Contas
    case "4":
      print("+------------------------------------+");
      print("\tListagem De Contas");
      print("+------------------------------------+");
      break;

    //Realizar Deposito
    case "5":
      break;

    //Realizar Saque
    case "6":
      break;
      
      //Sair da aplicação
    case "9":
      break;
      
    //Mostrar loop novamente
    default:
      //Loop continua, nenhuma opção válida
      print("Opção digitada inválida, digite novamente");
      
    }
  }
}
