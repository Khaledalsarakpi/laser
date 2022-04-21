import 'enum.dart';

class AuthExceptionHandler {
  static handleException(e) {
    print(e.code);
    var status;
    switch (e.code) {
      case "invalid-email":
        status = AuthResultStatus.invalidEmail;
        break;
      case "wrong-password":
        status = AuthResultStatus.wrongPassword;
        break;
      case "USER_NOT_FOUND":
        status = AuthResultStatus.userNotFound;
        break;
      case "ERROR_USER_DISABLED":
        status = AuthResultStatus.userDisabled;
        break;
      case "TOO_MANY_REQUESTS":
        status = AuthResultStatus.tooManyRequests;
        break;
      case "OPERATION_NOT_ALLOWED":
        status = AuthResultStatus.operationNotAllowed;
        break;
       case "email-already-in-use":
        status = AuthResultStatus.emailAlreadyExists;
        break;
      case "network":
        status=AuthResultStatus.network;
        break;
      case "location":
        status=AuthResultStatus.location;
        break;
        case "notfound":
      status=AuthResultStatus.notfound;
      break;
      case "bloked":
      status=AuthResultStatus.blocked;
      break;
      default:
        status = AuthResultStatus.undefined;
    }
    return status;
  }

  static generateExceptionMessage(exceptionCode) {
    String errorMessage;
    switch (exceptionCode) {
      case AuthResultStatus.invalidEmail:
        errorMessage = "البريد الالكتروني خاطئ";
        break;
      case AuthResultStatus.wrongPassword:
        errorMessage = "كلمة المرور خاطئة";
        break;
      case AuthResultStatus.userNotFound:
        errorMessage = "لا يوجد مستخدم لهذا البريد الالكتروني";
        break;
      case AuthResultStatus.userDisabled:
        errorMessage = "مستخدم هذه الايميل تم تقييده";
        break;
      case AuthResultStatus.tooManyRequests:
        errorMessage =
            "لقد قمت بطلب تسجيل الدخول مرات عدة..الرجاء المحاولة لاحقا";
        break;
      case AuthResultStatus.operationNotAllowed:
        errorMessage = "تسجيل الدخول غير متاح حاليا";
        break;
      case AuthResultStatus.emailAlreadyExists:
        errorMessage = "البريد الالكتروني مستخدم من قبل.";
        break;
      case AuthResultStatus.notfound:
        errorMessage = "اسم المستخدم غير موجود.";
        break;
      case AuthResultStatus.network:
        errorMessage = "حدث خطأ في الشبكة.";
        break;
      case AuthResultStatus.location:
        errorMessage = "يجب اعطاء السماحية للوصول لموقعك للتأكد من صحة معلوماتك";
        break;
        case AuthResultStatus.blocked:
      errorMessage = "لقد تم حظر حسابك راجع الإدارة";
      break;
      default:
        errorMessage = "حدث خطأ غير معروف";
    }

    return errorMessage;
  }
}
