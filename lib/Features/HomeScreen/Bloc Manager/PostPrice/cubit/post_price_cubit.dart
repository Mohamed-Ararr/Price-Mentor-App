import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pricementor/Core/Api%20Service/api.dart';

part 'post_price_state.dart';

class PostPriceCubit extends Cubit<PostPriceState> {
  PostPriceCubit() : super(PostPriceInitial());

  Future<dynamic> postPrice(String endPoint, dynamic data) async {
    emit(PostPriceLoading());
    try {
      var price = await ApiService().post(endPoint: endPoint, data: data);
      emit(PostPriceSuccess("${price.data}"));
    } on Exception catch (e) {
      if (e is DioError) {
        emit(PostPriceFailure(e));
      }
    }
  }
}
