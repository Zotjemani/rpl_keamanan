class Validators {
  // --- Fungsi Validasi Latihan 3 ---

  /// Validasi nomor telepon (hanya angka, 10-13 digit).
  static bool isValidPhone(String phone) {
    final regex = RegExp(r'^[0-9]{10,13}$');
    return regex.hasMatch(phone.trim());
  }

  /// Validasi URL (harus dimulai dengan http:// atau https://)[cite: 17].
  static bool isValidUrl(String url) {
    final regex = RegExp(r'^https?:\/\/[^\s/$.?#].[^\s]*$');
    return regex.hasMatch(url.trim());
  }

  /// Validasi password (min 8 karakter, mengandung huruf kapital, angka, dan simbol)[cite: 17].
  static bool isValidPassword(String password) {
    final regex = RegExp(
      r'^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$',
    );
    return regex.hasMatch(password);
  }

  // --- Wrapper Validation Method ---

  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Nomor telepon tidak boleh kosong';
    }
    if (!isValidPhone(value)) {
      return 'Nomor telepon harus berupa 10-13 digit angka';
    }
    return null;
  }

  static String? validateUrl(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'URL tidak boleh kosong';
    }
    if (!isValidUrl(value)) {
      return 'URL harus diawali http:// atau https://';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password tidak boleh kosong';
    }
    if (!isValidPassword(value)) {
      return 'Password minimal 8 karakter, mengandung huruf besar, angka, dan simbol';
    }
    return null;
  }

  // --- Method Bawaan Sebelumnya ---
  static bool isValidEmail(String email) {
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return regex.hasMatch(email);
  }

  static String sanitize(String input) {
    return input
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#x27;')
        .trim();
  }
}