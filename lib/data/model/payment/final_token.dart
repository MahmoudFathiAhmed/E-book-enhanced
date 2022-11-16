import 'package:my_e_book/domain/entity/payment/final_token.dart';

class FinalTokenModel extends FinalToken {
  const FinalTokenModel({required super.token});
  factory FinalTokenModel.fromJson(Map<String, dynamic> json) => FinalTokenModel(
        token: json["token"],
      );
}
