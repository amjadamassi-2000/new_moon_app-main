


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_moon_app/components/calendar.dart';
import 'package:new_moon_app/components/global_componnets.dart';


final GlobalKey<State> _loadingKey = GlobalKey<State>();


class GridViewData {

  String titleP1 ;
  String titleP2 ;

  GridViewData(this.titleP1 , this.titleP2 );

}


BuildContext context;

List data  = [


  GridViewData("التقويم" , "الهجري" ),


  GridViewData("التقويم" ,"الميلادي"),




];