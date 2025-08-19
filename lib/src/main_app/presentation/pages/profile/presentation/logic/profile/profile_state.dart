part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({
    @Default(RemoteDataStatus.ideal) RemoteDataStatus remoteDataStatus,
    ProfileModel? profileModel,
    String? contentUrl,
    LocalAccounts? localAccounts,
    DataFailed? dataFailed,
    String? selectImage,
  }) = _Initial;
}
