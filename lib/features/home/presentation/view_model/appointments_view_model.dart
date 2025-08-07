import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../auth/presentation/view_model/auth_view_model.dart';
import '../../data/repositories/appointments_repository_impl.dart';
import '../../domain/entities/appointments_entity.dart';

part 'appointments_view_model.g.dart';

@Riverpod(keepAlive: true)
Future<List<AppointmentsEntity>> getAppointments(ref) async {
  final appointmentsRepository = ref.watch(appointmentsRepositoryProvider);
  final userId = ref.watch(authViewModelProvider).value!.user?.uid ?? '';

  if (userId.isEmpty || userId == 'null') {
    return [];
  }

  return await appointmentsRepository.getAppointments(userId);
}
