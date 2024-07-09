import 'package:vcc_staff_teacher/ui/screens/aboutUsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/allowancesAndDeductionsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/privacyPolicyScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/sessionYearsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/termsAndConditionScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/addAnnouncementScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/addNotification/addNotificationScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/applyLeaveScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/changePasswordScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/classTimeTableScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/classesScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/editAnnouncementScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/contactUsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/editProfileScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/holidaysScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/home/homeScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/leaveRequestsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/generalLeavesScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/login/loginScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/leaves/leavesScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/manageAnnouncement/manageAnnouncementScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/manageNotification/manageNotificationScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/managePayrolls/managePayrollsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/myPayrollScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/notificationsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/offlineResult/offlineResultScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/paidFeesScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/searchTeachersScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/searchUsersScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/splashScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/staffDetailsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/staffsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/studentProfileScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/studentsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/studentsAttendanceScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherAddAttendanceScreeen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherAddEditAnnouncementScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherAddEditAssignmentScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherAddEditLessonScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherAddEditTopicScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherManageAssignmentSubmissionScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherClassSectionScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherEditAssignmentSubmission.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherExamResultScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/examsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherManageAnnouncementScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherManageAssignmentScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherManageLessonScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherManageTopicScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherMyTimetableScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherAcademics/teacherViewAttendanceScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherProfileScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teacherTimeTableDetailsScreen.dart';
import 'package:vcc_staff_teacher/ui/screens/teachersScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static String splashScreen = "/splash";

  static String homeScreen = "/";
  static String loginScreen = "/login";
  static String teachersScreen = "/teachers";
  static String teacherProfileScreen = "/teacherProfile";
  static String staffsScreen = "/staffs";
  static String staffDetailsScreen = "/staffDetails";
  static String studentsScreen = "/students";
  static String studentProfileScreen = "/studentProfile";
  static String leaveRequestScreen = "/leaveRequest";
  static String teacherTimeTableDetailsScreen = "/teacherTimeTableDetails";
  static String generalLeavesScreen = "/generalLeaves";
  static String holidaysScreen = "/holidays";
  static String applyLeaveScreen = "/applyLeave";
  static String leavesScreen = "/leaves";
  static String studentsAttendanceScreen = "/studentsAttendance";
  static String offlineResultScreen = "/offlineResult";
  static String manageNotificationScreen = "/manageNotification";
  static String addNotificationScreen = "/addNotification";
  static String manageAnnouncementScreen = "/manageAnnouncement";
  static String addAnnouncementScreen = "/addAnnouncement";
  static String paidFeesScreen = "/paidFees";
  static String managePayrollScreen = "/managePayroll";
  static String myPayrollScreen = "/myPayroll";
  static String editProfileScreen = "/editProfile";
  static String changePasswordScreen = "/changePassword";
  static String searchTeachersScreen = "/searchTeachers";
  static String notificationsScreen = "/notifications";
  static String classesScreen = "/classes";
  static String classTimetableScreen = "/classTimetable";
  static String examsScreen = "/exams";
  static String editAnnouncementScreen = "/editAnnouncement";
  static String searchUsersScreen = "/searchUsers";
  static String aboutUsScreen = "/aboutUs";
  static String contactUsScreen = "/contactUS";
  static String privacyPolicyScreen = "/privacyPolicy";
  static String termsAndConditionScreen = "/termsAndCondition";

  static String sessionYearsScreen = "/sessionYears";
  static String allowancesAndDeductionsScreen = "/allowancesAndDeductions";

  //teacher academics routes
  static String teacherMyTimetableScreen = "/teacherMyTimetable";
  static String teacherClassSectionScreen = "/teacherClassSection";
  static String teacherAddAttendanceScreen = "/teacherAddAttendance";
  static String teacherViewAttendanceScreen = "/teacherViewAttendance";
  static String teacherManageLessonScreen = "/teacherManageLesson";
  static String teacherManageTopicScreen = "/teacherManageTopic";
  static String teacherManageAssignmentScreen = "/teacherManageAssignment";
  static String teacherManageAssignmentSubmissionScreen =
      "/teacherManageAssignmentSubmissionScreen";
  static String teacherManageAnnouncementScreen = "/teacherManageAnnouncement";

  static String teacherExamResultScreen = "/teacherExamResult";
  static String teacherAddEditLessonScreen = "/teacherAddEditLessonScreen";
  static String teacherAddEditTopicScreen = "/teacherAddEditTopicScreen";
  static String teacherAddEditAnnouncementScreen =
      teacherAddEditAnnouncementScreen = "/teacherAddEditAnnouncementScreen";
  static String teacherAddEditAssignmentScreen =
      "/teacherAddEditAssignmentScreen";
  static String teacherEditAssignmentSubmissionScreen =
      "/teacherEditAssignmentSubmissionScreen";

  static final List<GetPage> getPages = [
    GetPage(name: splashScreen, page: () => SplashScreen.getRouteInstance()),
    GetPage(name: loginScreen, page: () => LoginScreen.getRouteInstance()),
    GetPage(name: homeScreen, page: () => HomeScreen.getRouteInstance()),
    GetPage(
        name: teachersScreen, page: () => TeachersScreen.getRouteInstance()),
    GetPage(
        name: teacherProfileScreen,
        page: () => TeacherProfileScreen.getRouteInstance()),
    GetPage(name: staffsScreen, page: () => StaffsScreen.getRouteInstance()),
    GetPage(
        name: staffDetailsScreen,
        page: () => StaffDetailsScreen.getRouteInstance()),
    GetPage(
        name: studentsScreen, page: () => StudentsScreen.getRouteInstance()),
    GetPage(
        name: studentProfileScreen,
        page: () => StudentProfileScreen.getRouteInstance()),
    GetPage(
        name: leaveRequestScreen,
        page: () => LeaveRequestsScreen.getRouteInstance()),
    GetPage(
        name: teacherTimeTableDetailsScreen,
        page: () => TeacherTimeTableDetailsScreen.getRouteInstance()),
    GetPage(
        name: generalLeavesScreen,
        page: () => GeneralLeavesScreen.getRouteInstance()),
    GetPage(
        name: holidaysScreen, page: () => HolidaysScreen.getRouteInstance()),
    GetPage(
        name: applyLeaveScreen,
        page: () => ApplyLeaveScreen.getRouteInstance()),
    GetPage(name: leavesScreen, page: () => LeavesScreen.getRouteInstance()),
    GetPage(
        name: studentsAttendanceScreen,
        page: () => StudentsAttendanceScreen.getRouteInstance()),
    GetPage(
        name: offlineResultScreen,
        page: () => OfflineResultScreen.getRouteInstance()),
    GetPage(
        name: manageNotificationScreen,
        page: () => ManageNotificationScreen.getRouteInstance()),
    GetPage(
        name: addNotificationScreen,
        page: () => AddNotificationScreen.getRouteInstance()),
    GetPage(
        name: manageAnnouncementScreen,
        page: () => ManageAnnouncementScreen.getRouteInstance()),
    GetPage(
        name: addAnnouncementScreen,
        page: () => AddAnnouncementScreen.getRouteInstance()),
    GetPage(
        name: editAnnouncementScreen,
        page: () => EditAnnouncementScreen.getRouteInstance()),
    GetPage(
        name: paidFeesScreen, page: () => PaidFeesScreen.getRouteInstance()),
    GetPage(
        name: managePayrollScreen,
        page: () => ManagePayrollsScreen.getRouteInstance()),
    GetPage(
        name: myPayrollScreen, page: () => MyPayrollScreen.getRouteInstance()),
    GetPage(
        name: editProfileScreen,
        page: () => EditProfileScreen.getRouteInstance()),
    GetPage(
        name: changePasswordScreen,
        page: () => ChangePasswordScreen.getRouteInstance()),
    GetPage(name: aboutUsScreen, page: () => AboutUsScrren.getRouteInstance()),
    GetPage(
        name: contactUsScreen, page: () => ContactUsScreen.getRouteInstance()),
    GetPage(
        name: privacyPolicyScreen,
        page: () => PrivacyPolicyScreen.getRouteInstance()),
    GetPage(
        name: termsAndConditionScreen,
        page: () => TermsAndConditionScreen.getRouteInstance()),
    GetPage(
        name: searchTeachersScreen,
        page: () => SearchTeachersScreen.getRouteInstance()),
    GetPage(
        name: notificationsScreen,
        page: () => NotificationsScreen.getRouteInstance()),
    GetPage(name: classesScreen, page: () => ClassesScreen.getRouteInstance()),
    GetPage(
      name: teacherMyTimetableScreen,
      page: () => TeacherMyTimetableScreen.getRouteInstance(),
    ),
    GetPage(
      name: classTimetableScreen,
      page: () => ClassTimeTableScreen.getRouteInstance(),
    ),
    GetPage(
      name: sessionYearsScreen,
      page: () => SessionYearsScreen.getRouteInstance(),
    ),
    GetPage(
      name: teacherClassSectionScreen,
      page: () => TeacherClassSectionScreen.getRouteInstance(),
    ),
    GetPage(
      name: teacherAddAttendanceScreen,
      page: () => TeacherAddAttendanceScreen.getRouteInstance(),
    ),
    GetPage(
      name: teacherViewAttendanceScreen,
      page: () => TeacherViewAttendanceScreen.getRouteInstance(),
    ),
    GetPage(
      name: teacherManageLessonScreen,
      page: () => TeacherManageLessonScreen.getRouteInstance(),
    ),
    GetPage(
      name: teacherManageTopicScreen,
      page: () => TeacherManageTopicScreen.getRouteInstance(),
      popGesture: false,
    ),
    GetPage(
      name: teacherManageAssignmentScreen,
      page: () => TeacherManageAssignmentScreen.getRouteInstance(),
    ),
    GetPage(
      name: teacherManageAssignmentSubmissionScreen,
      page: () => TeacherManageAssignmentSubmissionScreen.getRouteInstance(),
    ),
    GetPage(
      name: teacherManageAnnouncementScreen,
      page: () => TeacherManageAnnouncementScreen.getRouteInstance(),
    ),
    GetPage(
      name: examsScreen,
      page: () => ExamsScreen.getRouteInstance(),
    ),
    GetPage(
      name: searchUsersScreen,
      popGesture: false,
      page: () => SearchUsersScreen.getRouteInstance(),
    ),
    GetPage(
      name: teacherExamResultScreen,
      page: () => TeacherExamResultScreen.getRouteInstance(),
    ),
    GetPage(
      name: teacherAddEditLessonScreen,
      page: () => TeacherAddEditLessonScreen.getRouteInstance(),
      popGesture: false,
    ),
    GetPage(
      name: teacherAddEditTopicScreen,
      page: () => TeacherAddEditTopicScreen.getRouteInstance(),
      popGesture: false,
    ),
    GetPage(
      name: teacherAddEditAnnouncementScreen,
      page: () => TeacherAddEditAnnouncementScreen.getRouteInstance(),
      popGesture: false,
    ),
    GetPage(
      name: teacherAddEditAssignmentScreen,
      page: () => TeacherAddEditAssignmentScreen.getRouteInstance(),
      popGesture: false,
    ),
    GetPage(
      name: teacherEditAssignmentSubmissionScreen,
      page: () => TeacherEditAssignmentSubmissionScreen.getRouteInstance(),
    ),
    GetPage(
      name: allowancesAndDeductionsScreen,
      page: () => AllowancesAndDeductionsScreen.getRouteInstance(),
    ),
  ];

  // /[This will check if user is login or not. If user is login then navigate to target screen]
  // /[If user is not login then it will redirect user to login screen]
  // static Widget _checkAuthenticity({required Widget to}) {
  //   if (Utils.isUserLoggedIn()) {
  //     return to;
  //   }
  //   return AuthenticationScreen.getRouteInstance(showSkipButton: false);
  // }
}
