// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appointmentsDatasource)
final appointmentsDatasourceProvider = AppointmentsDatasourceProvider._();

final class AppointmentsDatasourceProvider
    extends
        $FunctionalProvider<
          AppointmentsDatasource,
          AppointmentsDatasource,
          AppointmentsDatasource
        >
    with $Provider<AppointmentsDatasource> {
  AppointmentsDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appointmentsDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appointmentsDatasourceHash();

  @$internal
  @override
  $ProviderElement<AppointmentsDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppointmentsDatasource create(Ref ref) {
    return appointmentsDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppointmentsDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppointmentsDatasource>(value),
    );
  }
}

String _$appointmentsDatasourceHash() =>
    r'1bc423969a9554dcbc59e0b826a3042e0771c1c6';
