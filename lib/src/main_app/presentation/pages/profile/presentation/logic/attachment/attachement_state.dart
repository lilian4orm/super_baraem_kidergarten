part of 'attachement_cubit.dart';

@freezed
class AttachementState with _$AttachementState {
  const factory AttachementState.initial({
    @Default(RemoteDataStatus.ideal) RemoteDataStatus remoteDataStatus,
    DataFailed? error,
  }) = _Initial;
}
