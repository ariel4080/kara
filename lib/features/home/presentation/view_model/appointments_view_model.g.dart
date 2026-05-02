// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getAppointments)
final getAppointmentsProvider = GetAppointmentsProvider._();

final class GetAppointmentsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AppointmentsEntity>>,
          List<AppointmentsEntity>,
          FutureOr<List<AppointmentsEntity>>
        >
    with
        $FutureModifier<List<AppointmentsEntity>>,
        $FutureProvider<List<AppointmentsEntity>> {
  GetAppointmentsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAppointmentsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAppointmentsHash();

  @$internal
  @override
  $FutureProviderElement<List<AppointmentsEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AppointmentsEntity>> create(Ref ref) {
    return getAppointments(ref);
  }
}

String _$getAppointmentsHash() => r'fd4f14999d5058a8c7158f3446ac9d4863f95dbc';
