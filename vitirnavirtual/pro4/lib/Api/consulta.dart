import 'dart:convert';
import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<albumId>> Buscatienda() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");

  final response = await http.get(url);

  return compute(pasaraListarusuario, response.body);
}

////////////// Pasar ListarUsuario
List<albumId> pasaraListarusuario(String respuestaBody) {
  final pasar = json.decode(respuestaBody).cast<Map<String, dynamic>>();

  return pasar.map<albumId>((json) => albumId.fromJson(json)).toList();
}
////////////////

class albumId {
  final userId;
  final id;
  final title;
  final Url;
  final thumbnailUrl;

  albumId({this.userId, this.id, this.title, this.Url, this.thumbnailUrl});

  factory albumId.fromJson(Map<String, dynamic> json) {
    return albumId(
      id: json['id'],
      title: json['title'],
      Url: json['Url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
