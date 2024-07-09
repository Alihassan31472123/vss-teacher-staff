import 'package:vcc_staff_teacher/data/models/userDetails.dart';
import 'package:vcc_staff_teacher/utils/api.dart';

class StaffRepository {
  Future<List<UserDetails>> getStaffs({String? search, int? status}) async {
    try {
      final result = await Api.get(
          url: Api.getStaffs,
          queryParameters: {"search": search, "status": status});

      return ((result['data'] ?? []) as List)
          .map((staff) => UserDetails.fromJson(Map.from(staff ?? {})))
          .toList();
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}
