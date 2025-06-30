class Validators {
  static bool isValidPhoneNumber(String phoneNumber) {
    // 中国手机号码验证正则表达式（简化版）
    final RegExp phoneRegex = RegExp(r'^1[3-9]\d{9}$');
    return phoneRegex.hasMatch(phoneNumber);
  }

  static bool isValidPassword(String password) {
    // 密码至少8位，包含字母和数字
    return password.length >= 8 &&
        password.contains(RegExp(r'[A-Za-z]')) &&
        password.contains(RegExp(r'[0-9]'));
  }

  static bool isValidEmail(String email) {
    // 简单的邮箱格式验证
    final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(email);
  }

  static bool isValidSmsCode(String code) {
    // 验证码是6位数字
    final RegExp codeRegex = RegExp(r'^\d{6}$');
    return codeRegex.hasMatch(code);
  }

  static bool isValidUsername(String username) {
    // 用户名3-20位，字母、数字、下划线
    final RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9_]{3,20}$');
    return usernameRegex.hasMatch(username);
  }
}
