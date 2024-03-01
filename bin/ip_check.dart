//Importi il file ip_check.dart che si trova in lib
//Importi tutto il file sotto l'alias ip_check, dopo accedi ai vari metodi con ip_check.nomeMetodo() come sotto
import 'package:ip_check/ip_check.dart' as ip_check;

void main(List<String> arguments) async {
  //Accedi al metodo getIp che si trova nel file ip_check.dart nella cartella lib con l'alias assegnato prima
  //Devi fare l'await perchè Ip restituisce una Future<String> --> con await gestisci le variabili di classe Future
  final ip = await ip_check.getIp();

  //Con print viene richiamato di default il metodo toString() dell'oggetto, di cui tu avevi fatto l'override
  print(ip);
}
