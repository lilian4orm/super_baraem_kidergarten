import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/functions/functions.dart';
import 'package:super_baraem_kidergarten/src/core/network/data_state.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/data/model/login_model.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/data/data_source/profile_remote.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/data/model/profile_model.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@singleton
class ProfileCubit extends Cubit<ProfileState> {
  ProfileDataSource dataSource = ProfileDataSource();
  final _imagePicker = ImagePicker();
  ProfileCubit() : super(const ProfileState.initial());

  getProfileData() async {
    emit(
      state.copyWith(
        remoteDataStatus: RemoteDataStatus.loading,
        dataFailed: null,
      ),
    );

    final result = await dataSource.getProfileApi();
    if (result is DataSuccess) {
      emit(
        state.copyWith(
          remoteDataStatus: RemoteDataStatus.loaded,
          profileModel: result.data!.results,
          contentUrl: result.data!.contentUrl,
        ),
      );
    } else if (result is DataFailed) {
      emit(
        state.copyWith(
          remoteDataStatus: RemoteDataStatus.error,
          dataFailed: result as DataFailed,
        ),
      );
    }
  }

  changeProfileImagheEvent(ImageSource source) async {
    final result = await _imagePicker.pickImage(source: source);

    if (result != null) {
      XFile file = XFile(result.path);
      compressAndGetFile(file, p.dirname(file.path)).then((value) async {
        emit(state.copyWith(remoteDataStatus: RemoteDataStatus.subloading));
        final result = await dataSource.uploadImage(
          value?.path,
          state.profileModel?.account.account_img,
        );
        if (result is DataFailed) {
          emit(
            state.copyWith(
              remoteDataStatus: RemoteDataStatus.error,
              dataFailed: result,
            ),
          );
          emit(
            state.copyWith(
              remoteDataStatus: RemoteDataStatus.loaded,
              dataFailed: result,
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            remoteDataStatus: RemoteDataStatus.loaded,
            selectImage: value!.path,
          ),
        );
      });
    } else {
      //  EasyLoading.dismiss();
      // User canceled the picker
    }
  }
}
