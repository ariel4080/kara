import 'package:flutter/material.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';

class StepProgress extends StatefulWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  final double currentStep;
  final double steps;

  const StepProgress({
    super.key,
    this.localizations,
    required this.appTheme,
    required this.currentStep,
    required this.steps,
  });

  @override
  State<StepProgress> createState() => _StepProgressState();
}

class _StepProgressState extends State<StepProgress> {
  double _widthProgress = 0;
  bool isCompleted = false;

  @override
  void initState() {
    super.initState();
    onSizeWidget();
  }

  void onSizeWidget() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.size is Size) {
        Size size = context.size!;
        setState(() {
          _widthProgress = size.width / (widget.steps);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: widget.appTheme.colorScheme.primaryContainer,
          ),
          child: Row(
            children: [
              AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: widget.appTheme.colorScheme.secondary,
                ),
                duration: const Duration(milliseconds: 1000),
                height: 4,
                width: _widthProgress * widget.currentStep,
                onEnd:
                    () => setState(() {
                      isCompleted = true;
                      Future.delayed(const Duration(milliseconds: 1100), () {
                        isCompleted = false;
                      });
                    }),
              ),
              widget.currentStep < widget.steps - 0.9 && isCompleted
                  ? AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: widget.appTheme.colorScheme.primary,
                        width: 2,
                      ),
                    ),
                  )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
