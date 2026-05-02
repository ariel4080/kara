// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bookingDatasource)
final bookingDatasourceProvider = BookingDatasourceProvider._();

final class BookingDatasourceProvider
    extends
        $FunctionalProvider<
          BookingDatasource,
          BookingDatasource,
          BookingDatasource
        >
    with $Provider<BookingDatasource> {
  BookingDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bookingDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bookingDatasourceHash();

  @$internal
  @override
  $ProviderElement<BookingDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BookingDatasource create(Ref ref) {
    return bookingDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BookingDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BookingDatasource>(value),
    );
  }
}

String _$bookingDatasourceHash() => r'04b7f92e9d441d78ab5cc81ed2fca0b3e2475862';
