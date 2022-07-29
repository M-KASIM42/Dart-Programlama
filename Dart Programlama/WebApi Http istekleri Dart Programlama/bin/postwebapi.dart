
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'getwebapi.dart';

void main() async {

    http.Response response = await createShipper("MİATK", "0 332 221 6598");
    
    print(response.body);
    //fetchPostsMyApiShippers();
}

Future<http.Response> createShipper(String name, String phone) {
    return http.post(
        Uri.parse('https://localhost:44333/api/Shippers'),
        headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
            'companyName': name,
            'phone': phone
        }),
    );
}