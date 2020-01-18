//pacote para gerenaciar os arquivmentos recebidos
import 'package:args/args.dart';
import 'package:dart_mysql/connection.dart';

void main(List<String> argumentos)  async {
  print('================================');
  print('=sistema de gestao de usuarios =');
  print('=versao 0.0.1                  =');
  print('================================');
  /*
  for (var item in args) {
    print(item);
  }
  */
  var parser = new ArgParser();
  //Configurando os parametros:
  // o primeiro parametro eh o nome, defaultsTo eh o valor defaut e allowed os valores permitidos.
  parser.addOption('mode', 
                  defaultsTo: 'select-all', 
                  allowed: ['update', 'select-all', 'insert', 'select', 'delete', 'create-table']);
  parser.addOption('id');
  parser.addOption('first_name');
  parser.addOption('last_name');
  var args = parser.parse(argumentos);

  var conn = await MySql.connect(host: 'db4free.net', db: 'carlosmysql', user: 'carlosmysql', password: 'carlosmysql');

  print('Executando no modo: '+args['mode']);
  switch(args['mode']){
    case 'select-all':
      var sql = 'select * from users';
      var result = await conn.query(sql);
      print("Records: "+ result.length.toString());
      /*
      //Obtendo só o primeiro
      var row = result.first;

      print('id: '+ row['id'].toString());
      print('first_name: '+ row['first_name']);
      print('last_name: '+ row['last_name']);
      */

      for (var item in result) {
        print(item);
      }

      break;
    case 'select':
      var sql = 'select * from users where id = ?';
      var result = await conn.query(sql, [args['id']]);
      for (var item in result) {
        print(item);
      }
      break;
    case 'update':
      var sql = "UPDATE users SET ";
      var parametros = [];
      if(args['first_name'] != null){
        sql += " first_name = ? ";
        parametros.add(args['first_name']);
      }
      if(args['first_name'] != null && args['last_name'] != null){
        sql += " , ";
      }
      if(args['last_name'] != null){
        sql += " last_name = ? ";
        parametros.add(args['last_name']);
      }
      parametros.add(args['id']);
      sql += " where id = ?";
      
      await conn.query(sql, parametros);
      print("UPDATE user OK");

      break;
    case 'insert':
      var sql = 'INSERT INTO users (first_name, last_name) values (?, ?)';

      await conn.query(sql, 
                       [args['first_name'], 
                        args['last_name']]);
      print("User add");
      break;
    case 'delete':
      var sql = 'DELETE FROM users where id = ?';
      await conn.query(sql, [args['id']]);
      print("User remove");
      break;
    case 'create-table':
      var sql = """
          CREATE TABLE `users` 	 (
            `id` INT NOT NULL AUTO_INCREMENT,
            `first_name` VARCHAR(100) NOT NULL,
            `last_name` VARCHAR(100) NULL,
            PRIMARY KEY (`id`)
          )ENGINE=InnoDB DEFAULT CHARSET=utf8;
      """;
      await conn.query(sql);
      print('Create table = OK');
      break;
  }

  
  print(args['id']);
  print(args['first_name']);
  print(args['last_name']);

  conn.close();

}