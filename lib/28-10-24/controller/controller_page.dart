import 'package:daily_tasks/28-10-24/model/mod_note.dart';
import 'package:daily_tasks/28-10-24/services/serve%20page.dart';
import 'package:get/get.dart';

class ControllerPage2 extends GetxController{
  var dataList=<ModNote>[].obs;
  var loadind=true.obs;

  getData()async{
    loadind.value=true;
    var data=await Servepage().getmethod();
    try{
      if(data!=null){
        dataList.value=data;
        loadind.value=false;
      }
    }catch(i){
      Get.snackbar("title","$i");
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