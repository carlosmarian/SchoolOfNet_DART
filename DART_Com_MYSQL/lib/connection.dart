//Pacote mysql
import 'package:mysql1/mysql1.dart';

class MySql{
  //Criando uma classe singleton
  static final _simpleton = new MySql._internal();

  factory MySql(){
    return _simpleton;
  }

  MySql._internal();


  static MySqlConnection _connection;

  //Metodo que sera executadoi de forma assincrona
  static Future<MySqlConnection> connect({String host, int port : 3306, String user, String password, String db}) async {
    if(_connection != null){
      return _connection;
    }

    var settings = new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db
    );

    _connection = await MySqlConnection.connect(settings);

    return _connection;
  }
}