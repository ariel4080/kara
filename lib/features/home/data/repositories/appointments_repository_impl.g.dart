// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appointmentsRepository)
final appointmentsRepositoryProvider = AppointmentsRepositoryProvider._();

final class AppointmentsRepositoryProvider
    extends
        $FunctionalProvider<
          AppointmentsRepository,
          AppointmentsRepository,
          AppointmentsRepository
        >
    with $Provider<AppointmentsRepository> {
  AppointmentsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appointmentsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appointmentsRepositoryHash();

  @$internal
  @override
  $ProviderElement<AppointmentsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppointmentsRepository create(Ref ref) {
    return appointmentsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppointmentsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppointmentsRepository>(value),
    );
  }
}

String _$appointmentsRepositoryHash() =>
    r'44b0f5ff9c649801883c9ccd0f37cadcf3d79b6e';
