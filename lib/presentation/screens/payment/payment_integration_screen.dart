import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/domain/usecase/get_final_token_card_usecas.dart';
import 'package:my_e_book/domain/usecase/get_final_token_kiosk_usecase.dart';
import 'package:my_e_book/domain/usecase/get_order_id_use_case.dart';
import 'package:my_e_book/presentation/components/general/default_button.dart';
import 'package:my_e_book/presentation/components/search/default_text_form_field.dart';
import 'package:my_e_book/presentation/controller/payment/cubit/payment_cubit.dart';

class PaymentIntegrationScreen extends StatefulWidget {
  const PaymentIntegrationScreen({super.key});

  @override
  State<PaymentIntegrationScreen> createState() =>
      _PaymentIntegrationScreenState();
}

class _PaymentIntegrationScreenState extends State<PaymentIntegrationScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emialController = TextEditingController();
  TextEditingController phoneNumController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emialController.dispose();
    phoneNumController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {
          if (state is PaymentRefCodeSuccessState) {
            Navigator.of(context).pushNamed(Routes.toggleRoute);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(AppStrings.userDetails),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(AppPadding.p20.r),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultTextFormField(
                        hint: AppStrings.firstName,
                        radius: AppSize.s24,
                        type: TextInputType.name,
                        controller: firstNameController,
                        validation: AppStrings.validateFirstName,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Theme.of(context).primaryColor,
                        ),
                        onChanged: (x) {},
                        borderColor: Theme.of(context).primaryColor,
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        isFilled: true,
                      ),
                      SizedBox(height: AppSize.s20.h),
                      DefaultTextFormField(
                        hint: AppStrings.lastName,
                        radius: AppSize.s24,
                        type: TextInputType.name,
                        controller: lastNameController,
                        validation: AppStrings.validateLastName,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Theme.of(context).primaryColor,
                        ),
                        onChanged: (x) {},
                        borderColor: Theme.of(context).primaryColor,
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        isFilled: true,
                      ),
                      SizedBox(height: AppSize.s20.h),
                      DefaultTextFormField(
                        hint: AppStrings.email,
                        radius: AppSize.s24,
                        type: TextInputType.emailAddress,
                        controller: emialController,
                        validation: AppStrings.validateEmail,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Theme.of(context).primaryColor,
                        ),
                        onChanged: (x) {},
                        borderColor: Theme.of(context).primaryColor,
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        isFilled: true,
                      ),
                      SizedBox(height: AppSize.s20.h),
                      DefaultTextFormField(
                        hint: AppStrings.phone,
                        radius: AppSize.s24,
                        type: TextInputType.phone,
                        controller: phoneNumController,
                        validation: AppStrings.validatePhone,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Theme.of(context).primaryColor,
                        ),
                        onChanged: (x) {},
                        borderColor: Theme.of(context).primaryColor,
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        isFilled: true,
                      ),
                      SizedBox(height: AppSize.s20.h),
                      DefaultTextFormField(
                        hint: AppStrings.pricePaymentIntegration,
                        radius: AppSize.s24,
                        type: TextInputType.number,
                        controller: priceController,
                        validation: AppStrings.validatePrice,
                        prefixIcon: Icon(
                          Icons.monetization_on_rounded,
                          color: Theme.of(context).primaryColor,
                        ),
                        onChanged: (x) {},
                        borderColor: Theme.of(context).primaryColor,
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        isFilled: true,
                      ),
                      SizedBox(height: AppSize.s20.h),
                      DefaultButton(
                        text: AppStrings.payPaymentIntegration,
                        minWidth: AppSize.s200,
                        // minWidth: double.infinity,
                        onclick: () async {
                          if (_formKey.currentState!.validate()) {
                            await PaymentCubit.get(context)
                                .getFirstToken(const NoParameters());
                            await PaymentCubit.get(context).getOrderId(
                                OrderIdParameters(price: priceController.text));
                            await PaymentCubit.get(context)
                                .getFinalTokenCard(FinalTokenCardParameters(
                              price: priceController.text,
                              firstName: firstNameController.text,
                              lastName: lastNameController.text,
                              email: emialController.text,
                              phone: phoneNumController.text,
                            ));
                            await PaymentCubit.get(context)
                                .getFinalTokenKiosk(FinalTokenKioskParameters(
                              price: priceController.text,
                              firstName: firstNameController.text,
                              lastName: lastNameController.text,
                              email: emialController.text,
                              phone: phoneNumController.text,
                            ));
                            await PaymentCubit.get(context)
                                .getRefCode(const NoParameters());
                          }
                        },
                        borderRadius: AppSize.s18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
