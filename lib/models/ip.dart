class Ip {
  String ip;
  String region;
  String postal;
  String city;

  //costruttore della classe, tutte le properties sono necessarie
  Ip(
      {required this.ip,
      required this.region,
      required this.postal,
      required this.city});

  //modifichi il metodo toString di base in modo da stampare la property ip dell'oggetto
  @override
  String toString() {
    return "My IP is $ip - I am currently in $city, $region - $postal";
  }
}
