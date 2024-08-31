import 'package:blink_comparison/core/entity/auth_factor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_factor_repository.freezed.dart';

abstract class AuthFactorRepository {
  AuthFactorModifyResult set(MutableAuthFactor key);

  AuthFactorModifyResult remove();

  AuthFactor? get();

  bool hasSecureKey();
}

@freezed
sealed class AuthFactorModifyResult with _$AuthFactorModifyResult {
  factory AuthFactorModifyResult.success() = AuthFactorModifyResultSuccess;

  factory AuthFactorModifyResult.failed({
    required Object error,
    required StackTrace stackTrace,
  }) = AuthFactorModifyResultFailed;
}

@Singleton(as: AuthFactorRepository)
class AuthFactorRepositoryImpl implements AuthFactorRepository {
  MutableAuthFactor? _key;

  @override
  AuthFactorModifyResult set(MutableAuthFactor key) {
    try {
      _key?.clear();
      _key = key;
      return AuthFactorModifyResult.success();
    } catch (e, stackTrace) {
      return AuthFactorModifyResult.failed(error: e, stackTrace: stackTrace);
    }
  }

  @override
  AuthFactorModifyResult remove() {
    try {
      _key?.clear();
      _key = null;
      return AuthFactorModifyResult.success();
    } catch (e, stackTrace) {
      return AuthFactorModifyResult.failed(error: e, stackTrace: stackTrace);
    }
  }

  @override
  AuthFactor? get() => _key?.toImmutable();

  @override
  bool hasSecureKey() => _key != null;
}
