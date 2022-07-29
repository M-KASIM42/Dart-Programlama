
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() {
   
   //fetchPosts();
   //fetchPostsMyApiShippers();
   //fetchPostsMyApiShipperswithId(2);
   //fetchPostsMyApiSuppliers();
   fetchPostsMyApiSuppliers(25);
   //fetchPostsMyApiSupplierswithName("Exotic Liquids");
}

void fetchPosts() async{
    final url = "https://jsonplaceholder.typicode.com/posts";
    final response = await http.get(Uri.parse(url));
    var jsondata = jsonDecode(response.body) as List;
    for (var item in jsondata) {
      print(item);
    }
}

void fetchPostsMyApiShippers() async{
    final url = "https://localhost:44333/api/Shippers";
    final response = await http.get(Uri.parse(url));
    var jsondata = jsonDecode(response.body) as List;
    List<Shippers> list = [];
    for (var i = 0; i < jsondata.length; i++) {
      list.add(Shippers(jsondata[i]["shipperId"], jsondata[i]["companyName"], jsondata[i]["phone"]));
    }
    for (var item in list) {
      print(item);
    }
}

void fetchPostsMyApiShipperswithId(int id) async{
    final url = "https://localhost:44333/api/Shippers";
    final response = await http.get(Uri.parse(url));
    var jsondata = jsonDecode(response.body) as List;
    List<Shippers> list = [];
    for (var i = 0; i < jsondata.length; i++) {
      list.add(Shippers(jsondata[i]["shipperId"], jsondata[i]["companyName"], jsondata[i]["phone"]));
    }
    for (var item in list) {
      if(item.shipperId == id){
        print(item);
      }
    }
}

void fetchPostsMyApiSuppliers(int id) async{
   // final url = "https://localhost:44333/api/Suppliers"+"/"+id.toString();
    final url = "https://localhost:44333/api/Suppliers/$id";

    final response = await http.get(Uri.parse(url));
    String data = response.body;
    var decodedData = jsonDecode(data);
    print(decodedData);
   // var jsondata = jsonDecode(response.body) as List;
   // print(response);
   /* List<Suppliers> list = [];
    for (var i = 0; i < jsondata.length; i++) {
      list.add(Suppliers(jsondata[i]["supplierId"], jsondata[i]["companyName"],jsondata[i]["contactName"],jsondata[i]["address"],
                         jsondata[i]["city"],jsondata[i]["region"],jsondata[i]["postalCode"],jsondata[i]["country"],jsondata[i]["phone"],
                         jsondata[i]["fax"],jsondata[i]["homePage"]));
    }
    for (var item in list) {
      print(item);
      print(" ");
    }*/
}

void fetchPostsMyApiSupplierswithId(int id) async{
    final url = "https://localhost:44333/api/Suppliers";
    final response = await http.get(Uri.parse(url));
    var jsondata = jsonDecode(response.body) as List;
    List<Suppliers> list = [];
    for (var i = 0; i < jsondata.length; i++) {
      list.add(Suppliers(jsondata[i]["supplierId"], jsondata[i]["companyName"],jsondata[i]["contactName"],jsondata[i]["address"],
                         jsondata[i]["city"],jsondata[i]["region"],jsondata[i]["postalCode"],jsondata[i]["country"],jsondata[i]["phone"],
                         jsondata[i]["fax"],jsondata[i]["homePage"]));
    }
      for (var item in list) {
        if(item.supplierid == id){
          print(item);
          return;
        }
      }
      throw Exception("bu id bulunamadi");
}

void fetchPostsMyApiSupplierswithName(String name) async{
    final url = "https://localhost:44333/api/Suppliers";
    final response = await http.get(Uri.parse(url));
    var jsondata = jsonDecode(response.body) as List;
    List<Suppliers> list = [];
    for (var i = 0; i < jsondata.length; i++) {
      list.add(Suppliers(jsondata[i]["supplierId"], jsondata[i]["companyName"],jsondata[i]["contactName"],jsondata[i]["address"],
                         jsondata[i]["city"],jsondata[i]["region"],jsondata[i]["postalCode"],jsondata[i]["country"],jsondata[i]["phone"],
                         jsondata[i]["fax"],jsondata[i]["homePage"]));
    }
      for (var item in list) {
        if(item.companyName == name){
          print(item);
          return;
        }
      }
      throw Exception("bu name bulunamadi");
}








// void getdata() async{
//   var response = await http.get(Uri.https('https://jsonplaceholder.typicode.com/todos', 'todos'));
//   var jsondata = jsonDecode(response.body);
//   List<todos>? list = [];
//   for (var s in jsondata) {
//     todos user = todos(s["userId"], s["id"], s["title"],s["completed"]); 
//     list.add(user);
//   }
//   print(list.length);
  
  
// }

// void fetchPosts() async{
//     final url = "https://localhost:44333/api/Suppliers";
//     final response = await http.get(Uri.parse(url));
//     var jsondata = jsonDecode(response.body) as List;
//     for (var item in jsondata) {
//       print(item);
//     }
// }

// Future getdata() async {
//   var response = await http.get(Uri.https('https://localhost:44333/api/Suppliers', 'Suppliers'));
//   var jsondata = jsonDecode(response.body);
//   List<Suppliers>? list = [];
//   for (var s in jsondata) {
//     Suppliers supplier = Suppliers(s["SupplierId"], s["CompanyName"], s["ContactName"], s["Address"], s["City"], s["Region"], s["PostalCode"], s["Country"], s["Phone"], s["Fax"], s["HomePage"]); 
//     list.add(supplier);
//   }
//   print(list.length);
//   return list;

// }
// Future getdata() async{
//   var url = Uri.parse("https://localhost:44333/api/Suppliers");
//   var res = await http.get(url);
//   final body = res.body;
//   final document = parser.parse(body);
//   var response = document.getElementsByClassName('Suppliers')[1];
//   print(response);

// }



class User{

  final String? name, email, userName;
  User(this.name, this.userName,this.email);
}
class Todos{
  int? userId,id;
  String? title;
  bool? completed;

  Todos(this.userId, this.id, this.title, this.completed);
}
class Suppliers{
  int? supplierid;
  String? companyName;
  String? contactName;
  String? contactTitle;
  String? address;
  String? city;
  String? region;
  String? postalCode;
  String? country;
  String? phone;
  String? fax;
  String? homePage;
  Suppliers(this.supplierid, this.companyName,this.contactName,this.address,this.city,this.region,this.postalCode,this.country,this.phone,this.fax,this.homePage);
  
  @override
  String toString() {
    return "SupplierId => $supplierid\nCompanyName => $companyName\nContactName => $contactName\nAddress => $address\nCity => $city\nRegion => $region\nPostalCode => $postalCode\nCountry => $country\nPhone => $phone\nFax => $fax\nHomePage => $homePage\n\n**********";
  }
}
class Shippers{

  int? shipperId;
  String? companyName;
  String? phone;
  Shippers(this.shipperId,this.companyName,this.phone);
  
  @override
  String toString() {
    return "ShipperId => $shipperId CompanyName =>  $companyName Phone =>   $phone";
  }

}
