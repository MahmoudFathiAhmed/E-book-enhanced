import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/presentation/components/general/state_renderer/state_renderer.dart';

abstract class FlowState{
  StateRendererType getStateRendererType();
  String getMessage();
}

//loading state (POPUP, FULL SCREEN)
class LoadingState extends FlowState{
  StateRendererType stateRendererType;
  String? message;

  LoadingState({required this.stateRendererType, this.message = AppStrings.loadingStateRenderer});

  @override
  String getMessage() =>message?? AppStrings.loadingStateRenderer;

  @override
  StateRendererType getStateRendererType() => stateRendererType;

}

//Error state (POPUP, FULL SCREEN)
class ErrorState extends FlowState{
  StateRendererType stateRendererType;
  String message;

  ErrorState(this.stateRendererType, this.message);

  @override
  String getMessage() =>message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;

}

//content state
class ContentState extends FlowState{
  ContentState();

  @override
  String getMessage() =>AppStrings.emptyString;

  @override
  StateRendererType getStateRendererType() => StateRendererType.contentState;

}

//Empty State
class EmptyState extends FlowState{
  String message;
  EmptyState(this.message);

  @override
  String getMessage() =>message;

  @override
  StateRendererType getStateRendererType() => StateRendererType.fullScreenEmptyState;

}

//Success State
class SuccessState extends FlowState{
  String message;
  SuccessState(this.message);
  @override
  String getMessage() =>message;

  @override
  StateRendererType getStateRendererType() =>StateRendererType.popupSuccess;


}

extension FlowStateExtension on FlowState{
  Widget getScreenWidget(BuildContext context, Widget contentScreenWidget, Function retryActionFunction){
    switch(runtimeType){
      case LoadingState: {
        if(getStateRendererType() == StateRendererType.popupLoadingState){
          //show popup loading
          showPopup(context, getStateRendererType(), getMessage());
          //show ui content of the screen
          return contentScreenWidget;
        }else{
          //full screen loading state
          return StateRenderer(
            message: getMessage(),
            stateRendererType: getStateRendererType(),
            retryActionFunction: retryActionFunction,
          );
        }
      }
      case ErrorState: {
        dismissDialog(context);
        if(getStateRendererType() == StateRendererType.popupErrorState){
          //show popup error
          showPopup(context, getStateRendererType(), getMessage());
          //show ui content of the screen
          return contentScreenWidget;
        }else{
          //full screen error state
          return StateRenderer(
            message: getMessage(),
            stateRendererType: getStateRendererType(),
            retryActionFunction: retryActionFunction,
          );
        }
      }
      case EmptyState: {
        return StateRenderer(
            stateRendererType: getStateRendererType(),
            message: getMessage(),
            retryActionFunction: (){});
      }
      case ContentState: {
        dismissDialog(context);
        return contentScreenWidget;
      }
      case SuccessState:{
        //check if we are showing loading popup to remove it before showing success popup
        dismissDialog(context);
        //show popup
        showPopup(context, StateRendererType.popupSuccess, getMessage(),title: AppStrings.success);
        return contentScreenWidget;
      }
      default:{
        dismissDialog(context);
        return contentScreenWidget;
      }
    }
  }

  _isCurrentDialogShowing(BuildContext context)=> ModalRoute.of(context)?.isCurrent != true;

  dismissDialog(BuildContext context){
    if(_isCurrentDialogShowing(context)){
      Navigator.of(context, rootNavigator: true).pop(true);
    }
  }

  showPopup(BuildContext context, StateRendererType stateRendererType, String message, {String title = AppStrings.emptyString}){
    WidgetsBinding.instance.addPostFrameCallback((_)=>
    showDialog(context: context, builder: (BuildContext context)=>
        StateRenderer(
            stateRendererType: stateRendererType,
            message: message,
            title: title,
            retryActionFunction: (){},
        )));
  }
}