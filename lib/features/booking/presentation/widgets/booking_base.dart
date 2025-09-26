import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kara/features/booking/presentation/view_model/booking_view_model.dart';
import 'package:kara/features/common/ui/contruction_message_screen.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';
import '../booking_first_step_screen.dart';
import 'step_progress.dart';

class BookingBase extends ConsumerStatefulWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  final double currentStep;
  final double steps;

  const BookingBase({
    super.key,
    this.localizations,
    required this.appTheme,
    required this.currentStep,
    required this.steps,
  });

  @override
  ConsumerState<BookingBase> createState() => _AppointmentBookingScreenState();
}

class _AppointmentBookingScreenState extends ConsumerState<BookingBase> {
  final PageController _pageController = PageController();
  double _currentStep = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.appTheme.colorScheme.primary,
      appBar: AppBar(
        title: Text(
          widget.localizations!.label_add_booking,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        backgroundColor: widget.appTheme.colorScheme.primary,
        foregroundColor: widget.appTheme.colorScheme.secondary,
        leading: IconButton(
          onPressed: () {
            if (_currentStep == 0) {
              context.pop();
              ref.invalidate(bookingViewModelProvider);
            } else {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              );
            }
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => context.pop(),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            children: [
              StepProgress(
                localizations: widget.localizations,
                appTheme: widget.appTheme,
                currentStep: _currentStep + 1,
                steps: widget.steps,
              ),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentStep = index.toDouble();
                    });
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: BookingFirstStepScreen(
                        appTheme: widget.appTheme,
                        localizations: widget.localizations,
                        pageController: _pageController,
                      ),
                    ),
                    ConstructionMessageScreen(
                      appTheme: widget.appTheme,
                      localizations: widget.localizations,
                    ),
                    ConstructionMessageScreen(
                      appTheme: widget.appTheme,
                      localizations: widget.localizations,
                    ),
                    ConstructionMessageScreen(
                      appTheme: widget.appTheme,
                      localizations: widget.localizations,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
