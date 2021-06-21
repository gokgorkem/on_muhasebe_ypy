import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:on_muhasebe/core/utils/constants.dart';

@ChopperApi(baseUrl: API_BASE_URL)
abstract class RestClientService extends ChopperService {
  static RestClientService create([ChopperClient? client]) =>
      _$RestClientService(client!);

  @Post(path: LOGIN_USER, headers: {'Content-type': 'application/json'})
  Future<Response> loginUser(@Body() String jsonBody);

  @Delete(path: LOGIN_USER, headers: {'Content-type': 'application/json'})
  Future<Response> logoutUser(
      @Body() String jsonBody, @Header("Authorization") String token);

  @Put(path: CREATE_USER, headers: {'Content-type': 'application/json'})
  Future<Response> changePassword(@Body() String jsonBody);
}

class _$RestClientService extends RestClientService {
  _$RestClientService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = RestClientService;

  Future<Response> loginUser(String jsonBody) {
    final $url = 'BASE_URL/tokens';
    final $headers = {'Content-type': 'application/json'};
    final $body = jsonBody;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> logoutUser(String jsonBody, String token) {
    final $url = 'BASE_URL/tokens';
    final $headers = {
      'Authorization': token,
      'Content-type': 'application/json'
    };
    final $body = jsonBody;
    final $request =
        Request('DELETE', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> changePassword(String jsonBody) {
    final $url = 'BASE_URL/create';
    final $headers = {'Content-type': 'application/json'};
    final $body = jsonBody;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
