import 'package:app_template/src/screens/image_input_page.dart';
import 'package:app_template/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../bloc/user_bloc.dart';
import '../models/AllInquiriesModel.dart';
import '../utils/urls.dart';
import '../widgets/build_transactionpage_buttons.dart';

class SelectTransactionNoPage extends StatefulWidget {
  final String contentText;

  SelectTransactionNoPage({
    Key? key,
    required this.contentText,
  }) : super(key: key);

  @override
  State<SelectTransactionNoPage> createState() =>
      _SelectTransactionNoPageState();
}

class _SelectTransactionNoPageState extends State<SelectTransactionNoPage> {
  final List<String> transactionList = [
    "Sales Inquiry",
    "Sales Quote",
    "Sales Order",
    "Shipment",
    "Sales Invoise",
    "Credit Memo",
    "Purchase Request",
    "RFQ",
    "Purchase Order",
    "GRN",
    "Demit Memo",
  ];

  @override
  void initState() {
    getIds();
    // TODO: implement initState
    super.initState();
  }

  Future<AllInquiriesModel?> getIds() async {
    AllInquiriesModel? allInquiries;
    try {
      Response allInquiriesData = await Dio().get(Urls.allInquiries);
      print('User Info: ${allInquiriesData.data}');

      print(allInquiriesData.data![0]['inquiryDetailsList'][0]
          ['inquiryDetailsId']);

      // allInquiries = AllInquiriesModel.fromJson(allInquiriesData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return allInquiries;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Transaction ID",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SizedBox(
          height: screenHeight(context, dividedBy: 1.4),
          child: Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 10),
              itemBuilder: ((context, index) => BuildTransactionPageButtons(
                  selectTransaction: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => SelectTransactionNoPage(
                                contentText: transactionList[index],
                              )),
                        ),
                      ),
                  indexpts: "id",
                  transactionIcons: Icons.panorama_fish_eye_outlined)),
              itemCount: 5,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FloatingActionButton(
          child: Icon(Icons.done),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => Image_Input_Page())));
          },
        ),
      ),
    );
  }
}
