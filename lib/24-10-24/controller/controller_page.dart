

import 'package:get/get.dart';

import '../model/api_model.dart';
import '../services/service_page.dart';

class ControllerPage extends GetxController{
  var dataList=<Api_Model>[].obs;
  var loadind =true.obs;


  getData()async{
    loadind.value=true;
    var data =await ServicePage().getmethod();
    try{
      if (data!=null){
        dataList.value = data;
        loadind.value=false;
      }
    }catch(i){
      Get.snackbar("title", "$i");
      loadind.value=true;
    }finally{
      loadind.value=false;
    }
  }
  
  void onInit(){
    getData();
    super.onInit();
  }
}