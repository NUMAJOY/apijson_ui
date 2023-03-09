import 'package:get/get.dart';
import 'package:mdelapijson/app/modules/home/model/getappsettings_model.dart';
import 'package:mdelapijson/app/modules/home/provider/getapidaata.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var list_data_counter=<Counter>[].obs;
  var is_loading=false.obs;

  
  
  @override
  void onInit()async {
    super.onInit();
    is_loading.value=true;
    var mapdata=await getapidata().getalldata();
    if(mapdata==null){
      print('invalid data');
      is_loading.value=false;

    }else{
      var data=Getappsettings.fromJson(mapdata);
      list_data_counter.value=data.counter!;
      print(list_data_counter.value);
      is_loading.value=false;
    }
   
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

 
  }

