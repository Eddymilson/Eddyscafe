import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailEntrar widget.
  FocusNode? emailEntrarFocusNode;
  TextEditingController? emailEntrarTextController;
  String? Function(BuildContext, String?)? emailEntrarTextControllerValidator;
  // State field(s) for senhaEntrar widget.
  FocusNode? senhaEntrarFocusNode;
  TextEditingController? senhaEntrarTextController;
  late bool senhaEntrarVisibility;
  String? Function(BuildContext, String?)? senhaEntrarTextControllerValidator;
  // State field(s) for NomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for ConfirmarSenha widget.
  FocusNode? confirmarSenhaFocusNode;
  TextEditingController? confirmarSenhaTextController;
  late bool confirmarSenhaVisibility;
  String? Function(BuildContext, String?)?
      confirmarSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaEntrarVisibility = false;
    senhaVisibility = false;
    confirmarSenhaVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailEntrarFocusNode?.dispose();
    emailEntrarTextController?.dispose();

    senhaEntrarFocusNode?.dispose();
    senhaEntrarTextController?.dispose();

    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confirmarSenhaFocusNode?.dispose();
    confirmarSenhaTextController?.dispose();
  }
}
