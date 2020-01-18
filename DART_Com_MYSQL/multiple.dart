//pacote para gerenaciar os arquivmentos recebidos
import 'package:dart_mysql/connection.dart';

void main(List<String> argumentos)  async {

  var conn = await MySql.connect(host: 'db4free.net', db: 'carlosmysql', user: 'carlosmysql', password: '88888');

  var sql = 'INSERT INTO users (first_name, last_name) values (?, ?)';

      await conn.queryMulti(sql, 
                       [
                         ['Maria', 'Eduarda'],
                         ['Joana', 'Silva'],
                         ['Luiz', 'Marian']]);
  conn.close();
}