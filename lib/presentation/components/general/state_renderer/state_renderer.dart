// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_e_book/core/utils/app_assets.dart';
import 'package:my_e_book/core/utils/app_colors.dart';

import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/styles_manager.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

enum StateRendererType {
  //POPUP STATES (DIALOG)
  popupLoadingState,
  popupErrorState,
  popupSuccess,
  //FULL SCREEN STATES (FULL SCREEN)
  fullScreenLoadingState,
  fullScreenErrorState,
  fullScreenEmptyState,
  //GENERAL
  contentState
}

// ignore: must_be_immutable
class StateRenderer extends StatelessWidget {
  StateRendererType stateRendererType;
  String message;
  String title;
  Function retryActionFunction;
  StateRenderer(
      {Key? key,
      required this.stateRendererType,
      this.message = AppStrings.loadingStateRenderer,
      this.title = "",
      required this.retryActionFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getStateWidget(context);
  }
  Widget _getStateWidget(BuildContext context){
    switch(stateRendererType){
      case StateRendererType.popupLoadingState:
        return _getPopupDialog(context, [_getAnimatedImage(AppJson.loading)]);
      case StateRendererType.popupErrorState:
        return _getPopupDialog(context, [
          _getAnimatedImage(AppJson.error),
          _getMessage(message),
          _getRetryButton(AppStrings.okStateRenderer, context),
        ]);
      case StateRendererType.fullScreenLoadingState:
        return _getItemsColumn([
          _getAnimatedImage(AppJson.loading),
          _getMessage(message)
        ]);
      case StateRendererType.fullScreenErrorState:
        return _getItemsColumn([
          _getAnimatedImage(AppJson.error),
          _getMessage(message),
          _getRetryButton(AppStrings.retryAgainStateRenderer, context),
        ]);
      case StateRendererType.fullScreenEmptyState:
        return _getItemsColumn([
          _getAnimatedImage(AppJson.empty),
          _getMessage(message)
        ]);
      case StateRendererType.contentState:
        return Container();
      case StateRendererType.popupSuccess:
        return _getPopupDialog(context, [
          _getAnimatedImage(AppJson.success),
          _getMessage(title),
          _getMessage(message),
          _getRetryButton(AppStrings.okStateRenderer, context)
        ]);
      default:
        return Container();
    }
  }

  Widget _getPopupDialog(BuildContext context, List<Widget> children){
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s14),),
      elevation: AppSize.s1_5,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(AppSize.s14),
          boxShadow: const [
            BoxShadow(color: Colors.black26,),
          ]
        ),
        child: _getDialogContext(context, children),
      ),
    );
  }

  Widget _getDialogContext(BuildContext context, List<Widget> children){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    ) ;
  }

  Widget _getItemsColumn(List<Widget> children){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget _getAnimatedImage(String animationName){
    return SizedBox(
      height: AppSize.s100,
      width: AppSize.s100,
      child: Lottie.asset(animationName)
    );
  }

  Widget _getMessage(String message){
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Text(
          message,
          style: getRegularStyle(
              color: AppColors.black,
              fontSize: AppSize.s18,
          ),
        ),
      ),
    );
  }

  Widget _getRetryButton(String buttonTitle, BuildContext context){
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p18),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: (){
                if(stateRendererType == StateRendererType.fullScreenErrorState){
                  // retry function
                  retryActionFunction.call();
                }else{ // popup error state
                  Navigator.pop(context);
                }
              },
              child: Text(buttonTitle),
          ),
        ),
      ),
    );
  }
}
