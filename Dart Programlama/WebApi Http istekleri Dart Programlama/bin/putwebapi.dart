
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'deletewebapi.dart';
import 'getwebapi.dart';
import 'postwebapi.dart';

void main(List<String> args) {
  //makePutRequest("ARDYZ",16);
  fetchPostsMyApiShippers();
}
// Future<void> makePutRequest(Shippers shippers,String id) async {
//   final String urlPrefix = 'https://localhost:44333/api/Shippers';
//   final url = Uri.parse('$urlPrefix/$id');
//   final headers = {"Content-type":"application/json"};
//   final json = '{"shipperId":${shippers.shipperId.toString()},"companyName":${shippers.companyName},"phone":${shippers.phone}}';
//   final response = await http.put(url, headers: headers, body: json);
//   print('Status code: ${response.statusCode}');
//   print('Body: ${response.body}');
// }

Future<void> makePutRequest(String name,int id) async {
  final String urlPrefix = 'https://localhost:44333/api/Shippers';
  final url = Uri.parse('$urlPrefix/$id');
  final headers = {"Content-type": "application/json"};
  final json = '{"shipperId" : "16" , "companyName" : "MİATK" , "phone" : "0332 221 6590"}';
  final response = await http.put(url, headers: headers, body: json);
  print('Status code: ${response.statusCode}');
}