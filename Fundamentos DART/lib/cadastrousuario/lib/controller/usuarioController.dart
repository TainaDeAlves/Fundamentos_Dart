import 'package:cadastrousuario/model/usuario.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UsuarioController{
  static Database? _bancodedados;

  Future<Database> get bancodedados async{
if(_bancodedados !=null){
  return _bancodedados!;
}else{
  _bancodedados= await _iniciarBancoDeDado();
  return _bancodedados!;
}
  }
  Future<Database> _iniciarBancoDeDado() async{
String caminho = join( await getDatabasesPath(), 'usuarios.db');

return await openDatabase(
  caminho,
  version:1,
  onCreate: (db, version) async{
    await db.execute('''
                      CREATE TABLE usuario(
                      id INTEGER PRIMARY KEY AUTOINCREMENT,
                      nome TEXT,
                      email TEXT,
                      senha TEXT
                      )
                     ''');
  });
  
  
  }

 Future<int> adicionarUsuario(Usuario usuario)async{
  final db= await bancodedados;

  return await db.insert('usuario', usuario.toMap());
 }
}