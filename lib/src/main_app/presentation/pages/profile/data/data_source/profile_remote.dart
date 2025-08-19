import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:super_baraem_kidergarten/src/core/network/data_state.dart';
import 'package:super_baraem_kidergarten/src/core/network/dio_client.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/data/model/profile_model.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/routes.dart';
import 'package:super_baraem_kidergarten/src/utils/injector.dart';

class ProfileDataSource {
  Future<DataState<ProfileResponse>> getProfileApi() async {
    final response = await (getIt<DioClient>()
        .instance('')
        .get(profileUrl)).resultWithoutData(ProfileResponse.fromJson);
    return response;
  }

  Future<DataState> uploadImage(String? path, String? oldImage) async {
    final response = await (getIt<DioClient>()
        .instance('')
        .post(
          uploadImageUrl,
          data: FormData.fromMap({
            "account_img": MultipartFile.fromFileSync(
              path!,
              filename: 'pic.jpg',
              contentType: MediaType('image', 'jpg'),
            ),
            "account_img_old": oldImage,
          }),
        )).resultWithoutData((a) => a);

    return response;
  }

  await(Future<Response> post) {}
}
