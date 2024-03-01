//https://ipapi.co/json/ --> API da contattare

//Per fare chiamata http installi la libreria del client http --> da terminale del progetto > dart pub add http
//Per controllare se l'installazione è andata a buon fine controlla nel file pubspec.yaml sotto la voce dependencies
//Importi la libreria http installata con il comando sopra as http
import "package:http/http.dart" as http;
import "dart:convert";

//Importi la classe Ip che hai definito in un'altro file nella cartella models
import "models/ip.dart";

//Puoi dichiarare la stringa dell'URL come const perchè ti vorrai collegare sempre a questa API
const stringUrl = "https://ipapi.co/json/";

//async dice che il metodo è asincrono --> all'interno ha del codice che richiede un'attesa
//Il metodo ritorna un Future<Ip>, quando lo richiami dovrai fare l'await per aspettare la risposta
Future<Ip> getIp() async {
  //Gli passi la const stringUrl (che ha come valore una stringa) e lo trasforma in un URL che può utilizzare tramite il parser
  //Te la salvi in una variabile final perchè il metodo Uri.parse non ritorna una const
  final url = Uri.parse(stringUrl);

  //prima o poi res conterrà il risultato della chiamata - per risolvere il fatto che devi aspettare la risposta devi usare async e await
  //con await dici che devi aspettare la risposta dell'API
  final res = await http.get(url);

  //data è una Map con chiavi che sono stringhe e valori che sono del tipo dynamic (di vari tipi) --> data è un dizionario
  final Map<String, dynamic> data = json.decode(res.body);

  //del dizionario data vai a prendere il valore alle chiavi specificate e lo passi al costruttore della classe Ip
  //restituisci poi un oggetto della classe Ip
  return Ip(
      ip: data['ip'],
      region: data['region'],
      postal: data['postal'],
      city: data['city']);
}
