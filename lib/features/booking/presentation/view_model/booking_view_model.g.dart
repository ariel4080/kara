// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BookingViewModel)
final bookingViewModelProvider = BookingViewModelProvider._();

final class BookingViewModelProvider
    extends $AsyncNotifierProvider<BookingViewModel, BookingState> {
  BookingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bookingViewModelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bookingViewModelHash();

  @$internal
  @override
  BookingViewModel create() => BookingViewModel();
}

String _$bookingViewModelHash() => r'd3d031e6e7223d6433b19be78e497bb853f8e499';

abstract class _$BookingViewModel extends $AsyncNotifier<BookingState> {
  FutureOr<BookingState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<BookingState>, BookingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<BookingState>, BookingState>,
              AsyncValue<BookingState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
