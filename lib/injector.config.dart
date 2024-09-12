// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:blink_comparison/core/crash_report/crash_report_builder.dart'
    as _i970;
import 'package:blink_comparison/core/crash_report/crash_report_id_generator.dart'
    as _i1004;
import 'package:blink_comparison/core/crash_report/crash_report_manager.dart'
    as _i496;
import 'package:blink_comparison/core/crash_report/crash_report_sender.dart'
    as _i129;
import 'package:blink_comparison/core/date_time_provider.dart' as _i673;
import 'package:blink_comparison/core/encrypt/encrypt.dart' as _i498;
import 'package:blink_comparison/core/encrypt/encrypt_key_derivation.dart'
    as _i496;
import 'package:blink_comparison/core/encrypt/encrypt_module_provider.dart'
    as _i670;
import 'package:blink_comparison/core/encrypt/password_hasher.dart' as _i41;
import 'package:blink_comparison/core/encrypt/salt_generator.dart' as _i187;
import 'package:blink_comparison/core/encrypt/secure_key_factory.dart' as _i479;
import 'package:blink_comparison/core/fs/ref_image_fs.dart' as _i325;
import 'package:blink_comparison/core/fs/thumbnail_fs.dart' as _i966;
import 'package:blink_comparison/core/notification_manager.dart' as _i671;
import 'package:blink_comparison/core/platform_info.dart' as _i1009;
import 'package:blink_comparison/core/ref_image_id_generator.dart' as _i332;
import 'package:blink_comparison/core/service/generate_thumbnail_job.dart'
    as _i809;
import 'package:blink_comparison/core/service/save_ref_image_job.dart' as _i923;
import 'package:blink_comparison/core/service/save_ref_image_service.dart'
    as _i1003;
import 'package:blink_comparison/core/service/save_thumbnail_job.dart' as _i63;
import 'package:blink_comparison/core/settings/app_settings.dart' as _i49;
import 'package:blink_comparison/core/storage/app_database.dart' as _i266;
import 'package:blink_comparison/core/storage/auth_factor_repository.dart'
    as _i105;
import 'package:blink_comparison/core/storage/password_repository.dart'
    as _i231;
import 'package:blink_comparison/core/storage/ref_image_repository.dart'
    as _i443;
import 'package:blink_comparison/core/storage/ref_image_secure_storage.dart'
    as _i755;
import 'package:blink_comparison/core/storage/ref_image_status_repository.dart'
    as _i1016;
import 'package:blink_comparison/core/thumbnailer.dart' as _i705;
import 'package:blink_comparison/di/file_system_module.dart' as _i361;
import 'package:blink_comparison/di/image_picker_module.dart' as _i1057;
import 'package:blink_comparison/di/sembast_module.dart' as _i417;
import 'package:blink_comparison/di/shared_preferences_module.dart' as _i980;
import 'package:blink_comparison/di/sodium_module.dart' as _i298;
import 'package:blink_comparison/platform/save_ref_image_native_service.dart'
    as _i188;
import 'package:blink_comparison/ui/camera_picker/model/camera_provider.dart'
    as _i1041;
import 'package:blink_comparison/ui/comparison/model/blink_comparison_cubit.dart'
    as _i202;
import 'package:blink_comparison/ui/home/model/selectable_ref_image_cubit.dart'
    as _i904;
import 'package:file/file.dart' as _i303;
import 'package:get_it/get_it.dart' as _i174;
import 'package:image_picker/image_picker.dart' as _i183;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sembast/sembast.dart' as _i310;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:sodium_libs/sodium_libs_sumo.dart' as _i539;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final fileSystemModule = _$FileSystemModule();
    final imagePickerModule = _$ImagePickerModule();
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final sodiumModule = _$SodiumModule();
    final sembastModule = _$SembastModule();
    gh.factory<_i303.FileSystem>(() => fileSystemModule.fs);
    gh.factory<_i183.ImagePicker>(() => imagePickerModule.imagePicker);
    gh.factory<_i904.SelectableRefImageCubit>(
        () => _i904.SelectableRefImageCubit());
    gh.factory<_i202.BlinkComparisonCubit>(() => _i202.BlinkComparisonCubit());
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.prefOld,
      preResolve: true,
    );
    await gh.singletonAsync<_i539.SodiumSumo>(
      () => sodiumModule.sodiumSumo(),
      preResolve: true,
    );
    gh.factory<_i1009.PlatformInfo>(() => _i1009.PlatformInfoImpl());
    gh.factory<_i188.SaveRefImageNativeService>(
        () => _i188.SaveRefImageNativeService(gh<_i1009.PlatformInfo>()));
    gh.factory<_i332.RefImageIdGenerator>(
        () => _i332.RefImageIdGeneratorImpl());
    gh.factory<_i187.SaltGenerator>(
        () => _i187.SaltGeneratorImpl(gh<_i539.SodiumSumo>()));
    gh.factory<_i705.Thumbnailer>(() => _i705.ThumbnailerImpl());
    gh.factory<_i1041.CameraProvider>(() => _i1041.CameraProviderImpl());
    gh.factory<_i41.PasswordHasher>(
        () => _i41.PasswordHasherImpl(gh<_i539.SodiumSumo>()));
    gh.factory<_i129.CrashReportSender>(
        () => _i129.CrashReportSenderImpl(gh<_i1009.PlatformInfo>()));
    gh.factory<_i673.DateTimeProvider>(() => _i673.DateTimeProviderImpl());
    gh.factory<_i496.EncryptKeyDerivation>(
        () => _i496.EncryptKeyDerivationImpl(gh<_i539.SodiumSumo>()));
    await gh.singletonAsync<_i460.SharedPreferencesAsync>(
      () => sharedPreferencesModule.pref(gh<_i460.SharedPreferences>()),
      preResolve: true,
    );
    gh.singleton<_i105.AuthFactorRepository>(
        () => _i105.AuthFactorRepositoryImpl());
    gh.factory<_i809.GenerateThumbnailJob>(
        () => _i809.GenerateThumbnailJobImpl(gh<_i705.Thumbnailer>()));
    gh.factory<_i479.SecureKeyFactory>(
        () => _i479.SecureKeyFactoryImpl(gh<_i539.SodiumSumo>()));
    gh.factory<_i1004.CrashReportIdGenerator>(
        () => _i1004.CrashReportIdGeneratorImpl());
    gh.singleton<_i1003.SaveRefImageServiceController>(() =>
        _i1003.SaveRefImageServiceController(
            gh<_i188.SaveRefImageNativeService>()));
    gh.singleton<_i1003.SaveRefImageJobController>(() =>
        _i1003.SaveRefImageJobController(
            gh<_i188.SaveRefImageNativeService>()));
    gh.singleton<_i671.NotificationManager>(
        () => _i671.NotificationManagerImpl(gh<_i1009.PlatformInfo>()));
    gh.factory<_i966.ThumbnailFS>(() => _i966.ThumbnailFSImpl(
          gh<_i1009.PlatformInfo>(),
          gh<_i303.FileSystem>(),
        ));
    gh.factory<_i970.CrashReportBuilder>(
      () => _i970.DevCrashReportBuilder(
        gh<_i1009.PlatformInfo>(),
        gh<_i1004.CrashReportIdGenerator>(),
      ),
      registerFor: {_dev},
    );
    await gh.singletonAsync<_i310.Database>(
      () => sembastModule.db(gh<_i1009.PlatformInfo>()),
      preResolve: true,
    );
    gh.singleton<_i49.AppSettings>(
      () => _i49.AppSettingsImpl(gh<_i460.SharedPreferencesAsync>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.singleton<_i670.EncryptModuleProvider>(
        () => _i670.EncryptModuleProviderImpl(
              gh<_i539.SodiumSumo>(),
              gh<_i496.EncryptKeyDerivation>(),
            ));
    gh.factory<_i325.RefImageFS>(() => _i325.RefImageFSImpl(
          gh<_i1009.PlatformInfo>(),
          gh<_i303.FileSystem>(),
        ));
    gh.factory<_i496.CrashReportManager>(() => _i496.CrashReportManagerImpl(
          gh<_i970.CrashReportBuilder>(),
          gh<_i129.CrashReportSender>(),
        ));
    gh.singleton<_i266.AppDatabase>(
      () => _i266.AppDatabaseImpl(gh<_i310.Database>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.singleton<_i231.PasswordRepository>(() => _i231.PasswordRepositoryImpl(
          gh<_i266.AppDatabase>(),
          gh<_i498.SaltGenerator>(),
          gh<_i41.PasswordHasher>(),
        ));
    gh.factory<_i923.SaveRefImageJob>(() => _i923.SaveRefImageJobImpl(
          gh<_i498.EncryptModuleProvider>(),
          gh<_i325.RefImageFS>(),
        ));
    gh.factory<_i970.CrashReportBuilder>(
      () => _i970.ProdCrashReportBuilder(
        gh<_i1009.PlatformInfo>(),
        gh<_i1004.CrashReportIdGenerator>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i63.SaveThumbnailJob>(
        () => _i63.SaveThumbnailJobImpl(gh<_i966.ThumbnailFS>()));
    gh.singleton<_i1003.SaveRefImageService>(
        () => _i1003.SaveRefImageServiceImpl(
              gh<_i923.SaveRefImageJob>(),
              gh<_i303.FileSystem>(),
              gh<_i1003.SaveRefImageServiceController>(),
              gh<_i1003.SaveRefImageJobController>(),
              gh<_i809.GenerateThumbnailJob>(),
              gh<_i63.SaveThumbnailJob>(),
              gh<_i105.AuthFactorRepository>(),
            ));
    gh.singleton<_i1016.RefImageStatusRepository>(() =>
        _i1016.RefImageStatusRepositoryImpl(gh<_i1003.SaveRefImageService>()));
    gh.singleton<_i755.RefImageSecureStorage>(
        () => _i755.RefImageSecureStorageImpl(
              gh<_i325.RefImageFS>(),
              gh<_i498.EncryptModuleProvider>(),
              gh<_i1003.SaveRefImageService>(),
              gh<_i105.AuthFactorRepository>(),
            ));
    gh.singleton<_i443.RefImageRepository>(() => _i443.RefImageRepositoryImpl(
          gh<_i266.AppDatabase>(),
          gh<_i332.RefImageIdGenerator>(),
          gh<_i673.DateTimeProvider>(),
          gh<_i755.RefImageSecureStorage>(),
          gh<_i966.ThumbnailFS>(),
          gh<_i187.SaltGenerator>(),
        ));
    return this;
  }
}

class _$FileSystemModule extends _i361.FileSystemModule {}

class _$ImagePickerModule extends _i1057.ImagePickerModule {}

class _$SharedPreferencesModule extends _i980.SharedPreferencesModule {}

class _$SodiumModule extends _i298.SodiumModule {}

class _$SembastModule extends _i417.SembastModule {}
