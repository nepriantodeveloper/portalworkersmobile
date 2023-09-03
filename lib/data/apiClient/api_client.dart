import 'package:dio/dio.dart';
import 'package:stockworkers/core/errors/exceptions.dart';
import 'package:stockworkers/core/network/network_info.dart';
import 'package:stockworkers/core/utils/logger.dart';
import 'package:stockworkers/core/utils/progress_dialog_utils.dart';
import 'package:stockworkers/data/models/me/get_me_resp.dart';
import 'package:stockworkers/data/models/register/post_register_resp.dart';


import 'network_interceptor.dart';

class ApiClient {
  factory ApiClient() {
    return _apiClient;
  }

  ApiClient._internal();

  var url = "https://nodedemo.dhiwise.co";

  static final ApiClient _apiClient = ApiClient._internal();

  final _dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 60),
  ))
    ..interceptors.add(NetworkInterceptor());

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await NetworkInfo().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    if (response.statusCode != null) {
      return response.statusCode! >= 200 && response.statusCode! <= 299;
    }
    return false;
  }

  Future<GetMeResp> fetchMe({Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await _dio.get(
        '$url/device/api/v1/user/me',
        options: Options(headers: headers),
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetMeResp.fromJson(response.data);
      } else {
        throw response.data != null
            ? GetMeResp.fromJson(response.data)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<PostRegisterResp> createRegister({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      var response = await _dio.post(
        '$url/device/auth/register',
        data: requestData,
        options: Options(headers: headers),
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterResp.fromJson(response.data);
      } else {
        throw response.data != null
            ? PostRegisterResp.fromJson(response.data)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
