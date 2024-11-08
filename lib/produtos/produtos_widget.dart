import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'produtos_model.dart';
export 'produtos_model.dart';

class ProdutosWidget extends StatefulWidget {
  /// produtos
  const ProdutosWidget({
    super.key,
    required this.refPratos,
  });

  final DocumentReference? refPratos;

  @override
  State<ProdutosWidget> createState() => _ProdutosWidgetState();
}

class _ProdutosWidgetState extends State<ProdutosWidget> {
  late ProdutosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdutosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<PratosRecord>(
      stream: PratosRecord.getDocument(widget.refPratos!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: const Color(0xFF2C2222),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final produtosPratosRecord = snapshot.data!;

        return Title(
            title: 'produtos',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: const Color(0xFF2C2222),
              appBar: AppBar(
                backgroundColor: const Color(0xFF2C2222),
                automaticallyImplyLeading: false,
                leading: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pop();
                  },
                  child: const Icon(
                    Icons.chevron_left_rounded,
                    color: Color(0xFFB0A455),
                    size: 35.0,
                  ),
                ),
                title: Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    produtosPratosRecord.nome,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter Tight',
                          color: const Color(0xFFB0A455),
                          fontSize: 35.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                actions: [
                  Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        safeSetState(() {});
                      },
                      child: badges.Badge(
                        badgeContent: Text(
                          FFAppState().Contador.toString(),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            color: Colors.white,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            shadows: [
                              const Shadow(
                                color: Color(0xFF0E0D0D),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                        ),
                        showBadge: true,
                        shape: badges.BadgeShape.circle,
                        badgeColor: const Color(0xFFCC132E),
                        elevation: 0.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topStart(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: false,
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: FlutterFlowIconButton(
                              buttonSize: 60.0,
                              icon: const Icon(
                                Icons.shopping_cart_outlined,
                                color: Color(0xFFB0A455),
                                size: 35.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('carrinho1');
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                centerTitle: false,
              ),
              body: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            safeSetState(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network(
                              produtosPratosRecord.img,
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 230.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              produtosPratosRecord.desc,
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFFB0A455),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 8.0),
                              child: Text(
                                'R\$${produtosPratosRecord.preco.toString()}',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: const Color(0xFFB0A455),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().addToCarrinho(
                                  produtosPratosRecord.reference);
                              FFAppState().Contador = FFAppState().Contador + 1;
                              safeSetState(() {});
                              FFAppState().somaCarrinho =
                                  FFAppState().somaCarrinho +
                                      produtosPratosRecord.preco;
                              safeSetState(() {});
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Parabéns'),
                                    content:
                                        const Text('Item adicionado com sucesso'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            text: 'Add carrinho',
                            options: FFButtonOptions(
                              width: 98.0,
                              height: 42.0,
                              padding: const EdgeInsets.all(12.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFB0A455),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                              ),
                            ),
                            showLoadingIndicator: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
