part of hive_flutter;

/// Flutter extensions for Hive.
extension HiveX on HiveInterface {
  /// Initializes Hive with the path from [getApplicationDocumentsDirectory].
  ///
  /// You can provide a [subDir] where the boxes should be stored.
  Future initFlutter([String? subDir]) async {
    WidgetsFlutterBinding.ensureInitialized();
    if (!kIsWeb) {
      var appDir = await getApplicationDocumentsDirectory();
      init(path_helper.join(appDir.path, subDir));
    }
  }
}
