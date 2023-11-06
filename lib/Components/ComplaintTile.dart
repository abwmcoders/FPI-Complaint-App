import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../Constants/constants.dart';
import '../Screens/Report/report.dart';
import '../model/complaint.dart';
import '../providers/providers.dart';
class ComplaintTile extends StatelessWidget {
  final Complains complain;
  final String id;
  const ComplaintTile({Key? key, required this.complain,required this.id }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
      onTap: (){
        Provider.of<ComplaintObject>(context,listen: false).setComplaint(complain);
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Report(id:id)));
      },
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
                Radius.circular(12.0)),
            gradient: lg,
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              buildRichText("Title: ",
                  complain.title.toString()),
              Table(
                children: [
                  TableRow(children: [
                    buildRichText(
                        "Name: ",
                        complain.username
                            .toString()),
                    buildRichText(
                        "Address: ",
                        complain.address
                            .toString()),
                  ]),
                  TableRow(children: [
                    buildRichText(
                        "Priority: ",
                        complain.priority
                            .toString()),
                    buildRichText(
                        "Status: ",
                        complain.status
                            .toString()),
                  ]),
                  TableRow(children: [
                    buildRichText(
                        "@FPI Complaints",
                        " System"
                            .toString(),),
                    buildRichText(
                        "Category: ",
                        complain.service
                            .toString())
                  ]),
                ],
              ),
            ],
          )),
    );
  }
  RichText buildRichText(String title, String subtitle) {
    return RichText(
      text: TextSpan(
        text: title,
        style: rcT,
        children: [
          TextSpan(
            text: subtitle,
            style: rcST,
          ),
        ],

      ),
    );
  }

}
