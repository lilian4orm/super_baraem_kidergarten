// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  RemoteDataStatus get remoteDataStatus => throw _privateConstructorUsedError;
  ProfileModel? get profileModel => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  LocalAccounts? get localAccounts => throw _privateConstructorUsedError;
  DataFailed<dynamic>? get dataFailed => throw _privateConstructorUsedError;
  String? get selectImage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RemoteDataStatus remoteDataStatus,
            ProfileModel? profileModel,
            String? contentUrl,
            LocalAccounts? localAccounts,
            DataFailed<dynamic>? dataFailed,
            String? selectImage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteDataStatus remoteDataStatus,
            ProfileModel? profileModel,
            String? contentUrl,
            LocalAccounts? localAccounts,
            DataFailed<dynamic>? dataFailed,
            String? selectImage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RemoteDataStatus remoteDataStatus,
            ProfileModel? profileModel,
            String? contentUrl,
            LocalAccounts? localAccounts,
            DataFailed<dynamic>? dataFailed,
            String? selectImage)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {RemoteDataStatus remoteDataStatus,
      ProfileModel? profileModel,
      String? contentUrl,
      LocalAccounts? localAccounts,
      DataFailed<dynamic>? dataFailed,
      String? selectImage});

  $ProfileModelCopyWith<$Res>? get profileModel;
  $LocalAccountsCopyWith<$Res>? get localAccounts;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteDataStatus = null,
    Object? profileModel = freezed,
    Object? contentUrl = freezed,
    Object? localAccounts = freezed,
    Object? dataFailed = freezed,
    Object? selectImage = freezed,
  }) {
    return _then(_value.copyWith(
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      localAccounts: freezed == localAccounts
          ? _value.localAccounts
          : localAccounts // ignore: cast_nullable_to_non_nullable
              as LocalAccounts?,
      dataFailed: freezed == dataFailed
          ? _value.dataFailed
          : dataFailed // ignore: cast_nullable_to_non_nullable
              as DataFailed<dynamic>?,
      selectImage: freezed == selectImage
          ? _value.selectImage
          : selectImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res>? get profileModel {
    if (_value.profileModel == null) {
      return null;
    }

    return $ProfileModelCopyWith<$Res>(_value.profileModel!, (value) {
      return _then(_value.copyWith(profileModel: value) as $Val);
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalAccountsCopyWith<$Res>? get localAccounts {
    if (_value.localAccounts == null) {
      return null;
    }

    return $LocalAccountsCopyWith<$Res>(_value.localAccounts!, (value) {
      return _then(_value.copyWith(localAccounts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RemoteDataStatus remoteDataStatus,
      ProfileModel? profileModel,
      String? contentUrl,
      LocalAccounts? localAccounts,
      DataFailed<dynamic>? dataFailed,
      String? selectImage});

  @override
  $ProfileModelCopyWith<$Res>? get profileModel;
  @override
  $LocalAccountsCopyWith<$Res>? get localAccounts;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteDataStatus = null,
    Object? profileModel = freezed,
    Object? contentUrl = freezed,
    Object? localAccounts = freezed,
    Object? dataFailed = freezed,
    Object? selectImage = freezed,
  }) {
    return _then(_$InitialImpl(
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      localAccounts: freezed == localAccounts
          ? _value.localAccounts
          : localAccounts // ignore: cast_nullable_to_non_nullable
              as LocalAccounts?,
      dataFailed: freezed == dataFailed
          ? _value.dataFailed
          : dataFailed // ignore: cast_nullable_to_non_nullable
              as DataFailed<dynamic>?,
      selectImage: freezed == selectImage
          ? _value.selectImage
          : selectImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.remoteDataStatus = RemoteDataStatus.ideal,
      this.profileModel,
      this.contentUrl,
      this.localAccounts,
      this.dataFailed,
      this.selectImage});

  @override
  @JsonKey()
  final RemoteDataStatus remoteDataStatus;
  @override
  final ProfileModel? profileModel;
  @override
  final String? contentUrl;
  @override
  final LocalAccounts? localAccounts;
  @override
  final DataFailed<dynamic>? dataFailed;
  @override
  final String? selectImage;

  @override
  String toString() {
    return 'ProfileState.initial(remoteDataStatus: $remoteDataStatus, profileModel: $profileModel, contentUrl: $contentUrl, localAccounts: $localAccounts, dataFailed: $dataFailed, selectImage: $selectImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.remoteDataStatus, remoteDataStatus) ||
                other.remoteDataStatus == remoteDataStatus) &&
            (identical(other.profileModel, profileModel) ||
                other.profileModel == profileModel) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.localAccounts, localAccounts) ||
                other.localAccounts == localAccounts) &&
            (identical(other.dataFailed, dataFailed) ||
                other.dataFailed == dataFailed) &&
            (identical(other.selectImage, selectImage) ||
                other.selectImage == selectImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteDataStatus, profileModel,
      contentUrl, localAccounts, dataFailed, selectImage);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RemoteDataStatus remoteDataStatus,
            ProfileModel? profileModel,
            String? contentUrl,
            LocalAccounts? localAccounts,
            DataFailed<dynamic>? dataFailed,
            String? selectImage)
        initial,
  }) {
    return initial(remoteDataStatus, profileModel, contentUrl, localAccounts,
        dataFailed, selectImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteDataStatus remoteDataStatus,
            ProfileModel? profileModel,
            String? contentUrl,
            LocalAccounts? localAccounts,
            DataFailed<dynamic>? dataFailed,
            String? selectImage)?
        initial,
  }) {
    return initial?.call(remoteDataStatus, profileModel, contentUrl,
        localAccounts, dataFailed, selectImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RemoteDataStatus remoteDataStatus,
            ProfileModel? profileModel,
            String? contentUrl,
            LocalAccounts? localAccounts,
            DataFailed<dynamic>? dataFailed,
            String? selectImage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(remoteDataStatus, profileModel, contentUrl, localAccounts,
          dataFailed, selectImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial(
      {final RemoteDataStatus remoteDataStatus,
      final ProfileModel? profileModel,
      final String? contentUrl,
      final LocalAccounts? localAccounts,
      final DataFailed<dynamic>? dataFailed,
      final String? selectImage}) = _$InitialImpl;

  @override
  RemoteDataStatus get remoteDataStatus;
  @override
  ProfileModel? get profileModel;
  @override
  String? get contentUrl;
  @override
  LocalAccounts? get localAccounts;
  @override
  DataFailed<dynamic>? get dataFailed;
  @override
  String? get selectImage;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
