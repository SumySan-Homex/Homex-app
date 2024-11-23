class ApiEndpoints {
  //auth
  static const String signup = 'signup';
  static const String login = 'login';
  static const String resendOTP = 'resend-otp';
  static const String saveinfo = 'create/profile';
  static const String requestPasswordReset = 'request-reset-otp';
  static const String resetPassword = 'reset-password';

  //patient

  static const String addMemeber = 'add-member';
  static const String getMembers = 'list-members';
  static const String getMemberDetails = 'member';
  static const String deleteMember = 'remove-member';
  static const String getMedication = 'list-medication';

  //online booking
  static const String onlinebooking = 'online';

  static const String updateStatus = 'online/status';
  static const String deleteBooking = '';
  static const String getBookings = '';

  //lab
  static const String updateLabResponse = 'labs/response';
  static const String uploadLabRepot = 'labs/upload';

  //pharmacy
  static const String prescription = 'prescriptions';
  static const String approvePrescription = 'prescriptions/approve';
  static const String prescriptionByPatient = 'prescriptions/patient';

  //appointment

  static const String createAppointment = 'create_appoinment';
  //user
  static const String profile = 'profile';
  static const String editProfile = 'edit-profile';
  // notification
  static const String notificationDetails = 'public/notification';
  static const String notification = 'public/notifications';
  static const String unreadCount = 'public/notifications/unread';

  //wallet
  static const String getCharges = 'charges';
}
