import 'package:app_template/src/utils/urls.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:app_template/src/screens/select_transaction_no_page.dart';
import 'package:app_template/src/widgets/build_transactionpage_buttons.dart';

import '../bloc/user_bloc.dart';
import '../models/AllInquiriesModel.dart';

class TransactionPage extends StatefulWidget {
  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
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

  List<AllInquiriesModel> transactionIds = [];

  @override
  void initState() {
    print("getUser();");

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
      return allInquiriesData.data;
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
        title: const Text("Select Transaction"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
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
                    indexpts: transactionList[index],
                    transactionIcons: Icons.panorama_fish_eye_outlined)),
                itemCount: transactionList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
