import 'package:flutter/material.dart';
import 'package:project_flutter/chitietsanpham.dart';
import 'package:project_flutter/DulieuSanpham.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Danh sach san pham',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static List<String> phone =['Xiaomi 13 Pro','Iphone 14 Promax','Samsung Galaxy S22 Ultra','Realme C35','Xiaomi Black Shark 3'];

  static List url = ['https://mobileworld.com.vn/uploads/product/Xiaomi_13_series/Xiaomi_13_pro_blue.jpg',
    'https://onewaymobile.vn/images/products/2022/09/10/large/14-promax-4_1662777413.png',
    'https://cdn2.cellphones.com.vn/x358,webp,q100/media/catalog/product/s/m/sm-s908_galaxys22ultra_front_phantomblack_211119_2.jpg',
    'https://hoanghamobile.com/Uploads/2022/05/23/realme-c35-5.png',
    'https://cdn.tgdd.vn/Products/Images/42/217844/xiaomi-black-shark-3-600x600-2-600x600.jpg'];

  final List<DulieuSanpham> Phonedata = List.generate(
      phone.length,
          (index)
      => DulieuSanpham('${phone[index]}', '${url[index]}','Một số thông tin về ${phone[index]} '));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Chuyen man hinh'),),
        body: ListView.builder(
            itemCount: Phonedata.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(Phonedata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Phonedata[index].ImageUrl),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FruitDetail(PhonedataModel: Phonedata[index],)));
                  },
                ),
              );
            }
        )
    );
  }
}