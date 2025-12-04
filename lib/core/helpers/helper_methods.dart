class HelperMethods {
  HelperMethods._();
  static  String formatBigNumber(num number) {
    if (number >= 1e12) {
      return "${(number / 1e12).toStringAsFixed(1)}T";
    } else if (number >= 1e9) {
      return "${(number / 1e9).toStringAsFixed(1)}B";
    } else if (number >= 1e6) {
      return "${(number / 1e6).toStringAsFixed(1)}M";
    } else if (number >= 1e3) {
      return "${(number / 1e3).toStringAsFixed(1)}K";
    } else {
      return number.toString();
    }
  }

  static String formatNumber(double value) {
    List<String> parts = value.toString().split('.');

    String before = parts[0];
    String after = parts.length > 1 ? parts[1] : "0";

    if (before.length > 2) {
      before = before.substring(0, 2);
    }

    if (after.length > 2) {
      after = after.substring(0, 2);
    }

    return "$before.$after";
  }

  static  String formatPercentage(num value) {
    final formatted = value.toStringAsFixed(2);
    if (value > 0) return "+$formatted%";
    if (value < 0) return "-$formatted%";
    return "$formatted%";
  }
}