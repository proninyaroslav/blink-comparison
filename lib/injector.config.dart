// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:file/file.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sembast/sembast.dart' as _i31;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import 'core/crash_report/crash_report_builder.dart' as _i29;
import 'core/crash_report/crash_report_id_generator.dart' as _i5;
import 'core/crash_report/crash_report_manager.dart' as _i42;
import 'core/crash_report/crash_report_sender.dart' as _i30;
import 'core/date_time_provider.dart' as _i6;
import 'core/encrypt/encrypt.dart' as _i17;
import 'core/encrypt/encrypt_key_derivation.dart' as _i7;
import 'core/encrypt/encrypt_module_provider.dart' as _i8;
import 'core/encrypt/password_hasher.dart' as _i11;
import 'core/encrypt/salt_generator.dart' as _i15;
import 'core/fs/file_system_module.dart' as _i54;
import 'core/fs/ref_image_fs.dart' as _i13;
import 'core/fs/thumbnail_fs.dart' as _i23;
import 'core/notification_manager.dart' as _i33;
import 'core/platform_info.dart' as _i12;
import 'core/ref_image_id_generator.dart' as _i14;
import 'core/service/generate_thumbnail_job.dart' as _i32;
import 'core/service/save_ref_image_job.dart' as _i16;
import 'core/service/save_ref_image_service.dart' as _i19;
import 'core/service/save_thumbnail_job.dart' as _i35;
import 'core/settings/app_settings.dart' as _i26;
import 'core/storage/app_database.dart' as _i38;
import 'core/storage/password_repository.dart' as _i44;
import 'core/storage/ref_image_repository.dart' as _i49;
import 'core/storage/ref_image_secure_storage.dart' as _i46;
import 'core/storage/ref_image_status_repository.dart' as _i47;
import 'core/thumbnailer.dart' as _i24;
import 'platform/save_ref_image_native_service.dart' as _i18;
import 'ui/about/about_cubit.dart' as _i25;
import 'ui/app_cubit.dart' as _i37;
import 'ui/auth/auth_cubit.dart' as _i48;
import 'ui/auth/sign_up_cubit.dart' as _i45;
import 'ui/camera/camera_provider.dart' as _i4;
import 'ui/camera/camera_provider_cubit.dart' as _i27;
import 'ui/comparison/blink_comparison_cubit.dart' as _i3;
import 'ui/comparison/comparison.dart' as _i40;
import 'ui/comparison/comparison_settings_cubit.dart' as _i28;
import 'ui/cubit/error_report_cubit.dart' as _i43;
import 'ui/cubit/showcase_cubit.dart' as _i36;
import 'ui/cubit/system_picker_cubit.dart' as _i22;
import 'ui/home/add_ref_image_cubit.dart' as _i52;
import 'ui/home/ref_images_actions_cubit.dart' as _i50;
import 'ui/home/ref_images_cubit.dart' as _i51;
import 'ui/home/selectable_ref_image_cubit.dart' as _i20;
import 'ui/preview/ref_image_cubit.dart' as _i53;
import 'ui/preview/ref_image_options_cubit.dart' as _i34;
import 'ui/settings/page/appearance_cubit.dart' as _i39;
import 'ui/settings/page/camera_cubit.dart' as _i41;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final fileSystemModule = _$FileSystemModule();
  final imagePickerModule = _$ImagePickerModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final sembastModule = _$SembastModule();
  gh.factory<_i3.BlinkComparisonCubit>(() => _i3.BlinkComparisonCubit());
  gh.factory<_i4.CameraProvider>(() => _i4.CameraProviderImpl());
  gh.factory<_i5.CrashReportIdGenerator>(
      () => _i5.CrashReportIdGeneratorImpl());
  gh.factory<_i6.DateTimeProvider>(() => _i6.DateTimeProviderImpl());
  gh.factory<_i7.EncryptKeyDerivation>(() => _i7.EncryptKeyDerivationImpl());
  gh.singleton<_i8.EncryptModuleProvider>(
      _i8.EncryptModuleProviderImpl(get<_i7.EncryptKeyDerivation>()));
  gh.factory<_i9.FileSystem>(() => fileSystemModule.fs);
  gh.factory<_i10.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i11.PasswordHasher>(() => _i11.PasswordHasherImpl());
  gh.factory<_i12.PlatformInfo>(() => _i12.PlatformInfoImpl());
  gh.factory<_i13.RefImageFS>(() =>
      _i13.RefImageFSImpl(get<_i12.PlatformInfo>(), get<_i9.FileSystem>()));
  gh.factory<_i14.RefImageIdGenerator>(() => _i14.RefImageIdGeneratorImpl());
  gh.factory<_i15.SaltGenerator>(() => _i15.SaltGeneratorImpl());
  gh.factory<_i16.SaveRefImageJob>(() => _i16.SaveRefImageJobImpl(
      get<_i17.EncryptModuleProvider>(), get<_i13.RefImageFS>()));
  gh.factory<_i18.SaveRefImageNativeService>(
      () => _i18.SaveRefImageNativeService(get<_i12.PlatformInfo>()));
  gh.singleton<_i19.SaveRefImageServiceController>(
      _i19.SaveRefImageServiceController(
          get<_i18.SaveRefImageNativeService>()));
  gh.factory<_i20.SelectableRefImageCubit>(
      () => _i20.SelectableRefImageCubit());
  await gh.singletonAsync<_i21.SharedPreferences>(
      () => sharedPreferencesModule.pref,
      preResolve: true);
  gh.factory<_i22.SystemPickerCubit>(() => _i22.SystemPickerCubit(
      get<_i10.ImagePicker>(), get<_i12.PlatformInfo>()));
  gh.factory<_i23.ThumbnailFS>(() =>
      _i23.ThumbnailFSImpl(get<_i12.PlatformInfo>(), get<_i9.FileSystem>()));
  gh.factory<_i24.Thumbnailer>(() => _i24.ThumbnailerImpl());
  gh.factory<_i25.AboutCubit>(() => _i25.AboutCubit(get<_i12.PlatformInfo>()));
  gh.singleton<_i26.AppSettings>(
      _i26.AppSettingsImpl(get<_i21.SharedPreferences>()));
  gh.factory<_i27.CameraProviderCubit>(() => _i27.CameraProviderCubit(
      get<_i4.CameraProvider>(), get<_i26.AppSettings>()));
  gh.factory<_i28.ComparisonSettingsCubit>(
      () => _i28.ComparisonSettingsCubit(get<_i26.AppSettings>()));
  gh.factory<_i29.CrashReportBuilder>(
      () => _i29.ProdCrashReportBuilder(
          get<_i12.PlatformInfo>(), get<_i5.CrashReportIdGenerator>()),
      registerFor: {_prod});
  gh.factory<_i29.CrashReportBuilder>(
      () => _i29.DevCrashReportBuilder(
          get<_i12.PlatformInfo>(), get<_i5.CrashReportIdGenerator>()),
      registerFor: {_dev});
  gh.factory<_i29.CrashReportBuilder>(
      () => _i29.TestCrashReportBuilder(
          get<_i12.PlatformInfo>(), get<_i5.CrashReportIdGenerator>()),
      registerFor: {_test});
  gh.factory<_i30.CrashReportSender>(
      () => _i30.CrashReportSenderImpl(get<_i12.PlatformInfo>()));
  await gh.singletonAsync<_i31.Database>(
      () => sembastModule.db(get<_i12.PlatformInfo>()),
      preResolve: true);
  gh.factory<_i32.GenerateThumbnailJob>(
      () => _i32.GenerateThumbnailJobImpl(get<_i24.Thumbnailer>()));
  gh.singleton<_i33.NotificationManager>(
      _i33.NotificationManagerImpl(get<_i12.PlatformInfo>()));
  gh.factory<_i34.RefImageOptionsCubit>(
      () => _i34.RefImageOptionsCubit(get<_i26.AppSettings>()));
  gh.singleton<_i19.SaveRefImageJobController>(
      _i19.SaveRefImageJobController(get<_i18.SaveRefImageNativeService>()));
  gh.factory<_i35.SaveThumbnailJob>(
      () => _i35.SaveThumbnailJobImpl(get<_i23.ThumbnailFS>()));
  gh.factory<_i36.ShowcaseCubit>(
      () => _i36.ShowcaseCubit(get<_i26.AppSettings>()));
  gh.singleton<_i37.AppCubit>(_i37.AppCubit(get<_i26.AppSettings>()));
  gh.singleton<_i38.AppDatabase>(_i38.AppDatabaseImpl(get<_i31.Database>()));
  gh.factory<_i39.AppearanceSettingsCubit>(() => _i39.AppearanceSettingsCubit(
      get<_i26.AppSettings>(),
      get<_i37.AppCubit>(),
      get<_i40.ComparisonSettingsCubit>()));
  gh.factory<_i41.CameraSettingsCubit>(() =>
      _i41.CameraSettingsCubit(get<_i26.AppSettings>(), get<_i37.AppCubit>()));
  gh.factory<_i42.CrashReportManager>(() => _i42.CrashReportManagerImpl(
      get<_i29.CrashReportBuilder>(), get<_i30.CrashReportSender>()));
  gh.factory<_i43.ErrorReportCubit>(
      () => _i43.ErrorReportCubit(get<_i42.CrashReportManager>()));
  gh.singleton<_i44.PasswordRepository>(_i44.PasswordRepositoryImpl(
      get<_i38.AppDatabase>(),
      get<_i17.SaltGenerator>(),
      get<_i11.PasswordHasher>()));
  gh.singleton<_i19.SaveRefImageService>(_i19.SaveRefImageServiceImpl(
      get<_i16.SaveRefImageJob>(),
      get<_i9.FileSystem>(),
      get<_i19.SaveRefImageServiceController>(),
      get<_i19.SaveRefImageJobController>(),
      get<_i32.GenerateThumbnailJob>(),
      get<_i35.SaveThumbnailJob>()));
  gh.factory<_i45.SignUpCubit>(
      () => _i45.SignUpCubit(get<_i44.PasswordRepository>()));
  gh.singleton<_i46.RefImageSecureStorage>(_i46.RefImageSecureStorageImpl(
      get<_i13.RefImageFS>(),
      get<_i17.EncryptModuleProvider>(),
      get<_i19.SaveRefImageService>()));
  gh.singleton<_i47.RefImageStatusRepository>(
      _i47.RefImageStatusRepositoryImpl(get<_i19.SaveRefImageService>()));
  gh.factory<_i48.AuthCubit>(() => _i48.AuthCubit(
      get<_i44.PasswordRepository>(),
      get<_i11.PasswordHasher>(),
      get<_i46.RefImageSecureStorage>(),
      get<_i6.DateTimeProvider>()));
  gh.singleton<_i49.RefImageRepository>(_i49.RefImageRepositoryImpl(
      get<_i38.AppDatabase>(),
      get<_i14.RefImageIdGenerator>(),
      get<_i6.DateTimeProvider>(),
      get<_i46.RefImageSecureStorage>(),
      get<_i23.ThumbnailFS>(),
      get<_i15.SaltGenerator>()));
  gh.factory<_i50.RefImagesActionsCubit>(
      () => _i50.RefImagesActionsCubit(get<_i49.RefImageRepository>()));
  gh.factory<_i51.RefImagesCubit>(() => _i51.RefImagesCubit(
      get<_i49.RefImageRepository>(), get<_i47.RefImageStatusRepository>()));
  gh.factory<_i52.AddRefImageCubit>(
      () => _i52.AddRefImageCubit(get<_i49.RefImageRepository>()));
  gh.factory<_i53.RefImageCubit>(
      () => _i53.RefImageCubit(get<_i49.RefImageRepository>()));
  return get;
}

class _$FileSystemModule extends _i54.FileSystemModule {}

class _$ImagePickerModule extends _i22.ImagePickerModule {}

class _$SharedPreferencesModule extends _i26.SharedPreferencesModule {}

class _$SembastModule extends _i38.SembastModule {}
