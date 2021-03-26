import '../strings.dart';

enum Domain { all, ios, android, flutter, sss, unity, macos, archived, unknown }

extension DomainExtension on Domain {
  String get name {
    switch (this) {
      case Domain.ios:
        return Strings.ios;
        break;
      case Domain.android:
        return Strings.android;
        break;
      case Domain.flutter:
        return Strings.flutter;
        break;
      case Domain.sss:
        return Strings.sss;
        break;
      case Domain.unity:
        return Strings.unity;
        break;
      case Domain.macos:
        return Strings.macos;
        break;
      case Domain.archived:
        return Strings.archived;
        break;
      default:
        return Strings.unknown;
        break;
    }
  }
}
