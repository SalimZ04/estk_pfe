import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  initDb() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'my_database.db'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE Absence (
            id_abs INTEGER PRIMARY KEY,
            id_et INTEGER,
            id_cour INTEGER,
            motif_abs STRING,
            date DATE,
            id_fil INTEGER,
            nom STRING,
            niveau STRING,
            FOREIGN KEY (id_et) REFERENCES Enseignant(Id_et),
            FOREIGN KEY (id_cour) REFERENCES Cour(id_cour),
            FOREIGN KEY (id_fil) REFERENCES Filière(id_fil)
          )
        ''');
        await db.execute('''
          CREATE TABLE Administrateur (
            Id_ut INTEGER PRIMARY KEY,
            prenom STRING,
            nom STRING,
            login_ut STRING,
            Pass_ut STRING,
            telephone STRING
          )
        ''');
        await db.execute('''
          CREATE TABLE Cour (
            id_cour INTEGER PRIMARY KEY,
            contenu STRING,
            date DATE,
            heureEntrée DATE,
            heureSortir DATE,
            heureDébutdepause DATE,
            heurefindepause DATE,
            id_salle INTEGER,
            FOREIGN KEY (id_salle) REFERENCES Salle(numero)
          )
        ''');
        await db.execute('''
          CREATE TABLE Enseignant (
            Id_et INTEGER PRIMARY KEY,
            prenom STRING,
            nom STRING,
            login_et STRING,
            Pass_et STRING,
            FOREIGN KEY (Id_et) REFERENCES Administrateur(Id_ut)
          )
        ''');
        await db.execute('''
          CREATE TABLE Etudiante (
            Id_et INTEGER PRIMARY KEY,
            fingerprint TEXT,
            prenom STRING,
            nom STRING,
            pca STRING,
            id_fil INTEGER,
            FOREIGN KEY (Id_et) REFERENCES Administrateur(Id_ut),
            FOREIGN KEY (id_fil) REFERENCES Filière(id_fil)
          )
        ''');
        await db.execute('''
          CREATE TABLE Filière (
            id_fil INTEGER PRIMARY KEY,
            description STRING,
            responsable STRING,
            CNE INTEGER
          )
        ''');
        await db.execute('''
          CREATE TABLE Module (
            description STRING PRIMARY KEY,
            enseignant STRING,
            id_cour INTEGER,
            FOREIGN KEY (id_cour) REFERENCES Cour(id_cour)
          )
        ''');
        await db.execute('''
          CREATE TABLE Salle (
            numero INTEGER PRIMARY KEY,
            capacité INTEGER,
            type STRING,
            disponible BOOLEAN,
            equipements STRING[]
          )
        ''');
      },
      version: 1,
    );
  }
}
