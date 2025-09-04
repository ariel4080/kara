import 'package:intl/intl.dart';

import '../../../../home/domain/entities/appointments_entity.dart';
import '../../../domain/entities/service_category_entity.dart';
import '../../models/service_category_model.dart';

extension ServiceCategoryListExt on List<ServiceCategoryModel> {
  List<ServiceCategoryEntity> toEntity() {
    return map((model) => model.toEntity()).toList();
  }
}

extension ServiceCategoryExt on ServiceCategoryModel {
  ServiceCategoryEntity toEntity() {
    final formatPrice = NumberFormat("#,##0.00", "en_US");
    return ServiceCategoryEntity(
      name: name,
      description: description!,
      time:
          '${(duration ~/ 60).toString().padLeft(2, '0')}:${(duration % 60).toString().padLeft(2, '0')}',
      price: formatPrice.format(price),
      currency: currency,
      icon:
          ServiceIcon.values
              .firstWhere(
                (e) => e.name == icon,
                orElse: () => ServiceIcon.service,
              )
              .icon,
    );
  }
}
