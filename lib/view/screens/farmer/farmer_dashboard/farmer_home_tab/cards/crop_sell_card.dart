import 'package:e_agri_farmers/constants/colors/constant_colors.dart';
import 'package:e_agri_farmers/helper/text_helper.dart';
import 'package:e_agri_farmers/view/screens/farmer/farmer_dashboard/farmer_home_tab/data/sell_crop_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CropSellCardFarmer extends StatelessWidget {
  final BuildContext ctx;
  final SellCropDataFarmer data;
  const CropSellCardFarmer({Key? key , required this.ctx, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextHelper.textWithColorSize("Farmer Phone :  " + data.auctionID.substring(0 , 13) , 15 , Colors.blue , fontWeight: FontWeight.w400),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: ConstantColors.mPrimaryColor,borderRadius: const BorderRadius.all(Radius.circular(5))),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 5),

                        child:TextHelper.textWithColorSize("LIVE" , 8 , Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            TextHelper.textWithColorSize("Farmer Name :  " + data.farmerName , 15 , Colors.blue , fontWeight: FontWeight.w400),
            const SizedBox(height: 5,),
            TextHelper.textWithColorSize(data.cropName , 16 , Colors.green ,fontWeight: FontWeight.w500),
            const SizedBox(height: 5,),
            TextHelper.textWithColorSize("Offer per unit :  "+   data.offerperUnit.toString() + " Rs", 15 , Colors.black),
            const SizedBox(height: 5,),
            TextHelper.textWithColorSize("Minimum Quantity:  " + data.minimumQuantity.toString()+" Kg", 15, Colors.black),
            const SizedBox(height: 5,),
            TextHelper.textWithColorSize("Available Quantity:  " + data.totalQuantity.toString()+" Kg", 15, Colors.black),
            const SizedBox(height: 5,),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child:TextHelper.textWithColorSize(
                  "Address : ${data.village}, ${data.district}, ${data.state}", 15 , Colors.black),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  data.transport?
                  TextHelper.textWithColorSize("Transportation Available", 15, Colors.green):
                  TextHelper.textWithColorSize("Transportation Not Available", 15, Colors.black),

                  Row(
                    children: [
                      TextHelper.textWithColorSize("FOR SELL", 14, Colors.blue , fontWeight: FontWeight.w500)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}