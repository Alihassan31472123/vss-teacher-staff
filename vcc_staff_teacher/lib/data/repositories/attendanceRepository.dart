import 'package:vcc_staff_teacher/data/models/holiday.dart';
import 'package:vcc_staff_teacher/data/models/studentAttendance.dart';
import 'package:vcc_staff_teacher/utils/api.dart';

class AttendanceRepository {
  Future<
      ({
        List<StudentAttendance> attendance,
        bool isHoliday,
        Holiday holidayDetails
      })> getAttendance({
    required int classSectionId,
    required int? type,
    required String date,
  }) async {
    try {
      final result = await Api.get(
        url: Api.getAttendance,
        useAuthToken: true,
        queryParameters: {
          "class_section_id": classSectionId,
          "date": date,
          if (type != null) "type": type
        },
      );

      return (
        attendance: (result['data'] as List)
            .map(
              (attendanceReport) =>
                  StudentAttendance.fromJson(attendanceReport),
            )
            .toList(),
        isHoliday: result['is_holiday'] as bool,
        holidayDetails: Holiday.fromJson(
          Map.from(result['holiday'] == null
              ? {}
              : (result['holiday'] as List).firstOrNull ?? {}),
        )
      );
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  Future<void> submitAttendance({
    required int classSectionId,
    required String date,
    required List<Map<String, dynamic>> attendance,
  }) async {
    try {
      await Api.post(
        url: Api.submitAttendance,
        useAuthToken: true,
        body: {
          "class_section_id": classSectionId,
          "date": date,
          "attendance": attendance,
        },
      );
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}
