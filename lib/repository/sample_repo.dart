import 'package:personalapp/model/sample_model.dart';
import 'package:personalapp/service/dio_service.dart';

class SampleRepo{

  Future<List<Superheros>?> sampleApiCall() async{
    final response = await dioService.dio.get('https://protocoderspoint.com/jsondata/superheros.json');
     final sampleModel = SampleModel.fromJson(response.data as Map<String, dynamic>);
     return sampleModel.superheros;
  }
}