// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class FinalToken extends Equatable {
  const FinalToken({
    required this.token,
  });

  final String token;

  

  Map<String, dynamic> toJson() => {
        "token": token,
      };

  @override
  List<Object> get props => [token];
}
