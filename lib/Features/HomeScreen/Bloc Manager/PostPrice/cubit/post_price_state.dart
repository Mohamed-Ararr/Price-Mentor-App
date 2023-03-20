part of 'post_price_cubit.dart';

abstract class PostPriceState extends Equatable {
  const PostPriceState();

  @override
  List<Object> get props => [];
}

class PostPriceInitial extends PostPriceState {}

class PostPriceLoading extends PostPriceState {}

class PostPriceSuccess extends PostPriceState {
  final String price;

  const PostPriceSuccess(this.price);
}

class PostPriceFailure extends PostPriceState {
  final DioError eMsg;

  const PostPriceFailure(this.eMsg);
}
