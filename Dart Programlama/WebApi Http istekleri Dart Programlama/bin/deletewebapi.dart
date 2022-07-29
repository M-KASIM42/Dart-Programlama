
import 'package:http/http.dart' as http;
import 'getwebapi.dart';

void main(List<String> args) {
  //deleteShippers('16');
  fetchPostsMyApiShippers();
}

Future<http.Response> deleteShippers(String id) async {
       final http.Response response = await http.delete(        
       Uri.parse
      ('https://localhost:44333/api/Shippers/$id'),
        headers: <String, String>{
       'Content-Type': 'application/json; charset=UTF-8',
         },
       );
       return response;
}