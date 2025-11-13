// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'aifarma_core_service.swagger.dart' show $JsonSerializableConverter;
import 'client_index.dart';

part 'api_service.g.dart';

class UnauthorizedException implements Exception {
  const UnauthorizedException();

  @override
  String toString() {
    return 'UnauthorizedException';
  }
}

@riverpod
http.Client httpClient(Ref ref) {
  // Create client without proxy for localhost development
  final client = http.Client();
  return RetryClient(client);
}

@riverpod
String apiBaseUrl(Ref ref) {
  // This should be overridden in main_dev.dart, main_staging.dart, or main_production.dart
  throw UnimplementedError(
    'apiBaseUrlProvider must be overridden in the ProviderScope',
  );
}

// class BaseAuthInterceptor implements Interceptor {
//   const BaseAuthInterceptor(this.ref);
//   final Ref ref;

//   @override
//   FutureOr<Response<BodyType>> intercept<BodyType>(
//     Chain<BodyType> chain,
//   ) async {
//     final user = ref.read(userServiceProvider);
//     final Response<BodyType> response = user?.accessToken != null
//         ? await chain.proceed(
//             applyHeader(
//               chain.request,
//               'authorization',
//               'Bearer ${user?.accessToken}',
//               override: false,
//             ),
//           )
//         : await chain.proceed(chain.request);

//     if (response.statusCode == 401) {
//       // TODO clear local storage
//       // FirebaseMessaging.instance.deleteToken();
//       throw const UnauthorizedException();
//     }
//     final error = response.error;
//     if (error != null) {
//       try {
//         final json = jsonDecode(error as String) as Map<String, dynamic>;
//         if (json.containsKey('statusCode') && json.containsKey('messageEn')) {
//           throw ApiException(json['statusCode'], json['messageEn']);
//         }
//       } on FormatException catch (e) {
//         if (e.runtimeType == FormatException &&
//             e.source == 'no healthy upstream') {
//           throw const ApiException('', 'Server under maintenance.');
//         }
//       } catch (e) {
//         rethrow;
//       }
//     }

//     return response;
//   }
// // }

// class AwsAuthInterceptor implements Interceptor {
//   @override
//   FutureOr<Response<BodyType>> intercept<BodyType>(
//     Chain<BodyType> chain,
//   ) async {
//     final Response<BodyType> response = await chain.proceed(chain.request);

//     if (response.statusCode == 401) {
//       throw const UnauthorizedException();
//     }
//     final error = response.error;
//     if (error != null) {
//       try {
//         final json = jsonDecode(error as String) as Map<String, dynamic>;
//         if (json.containsKey('statusCode') && json.containsKey('messageEn')) {
//           throw ApiException(json['statusCode'], json['messageEn']);
//         }
//       } on FormatException catch (e) {
//         if (e.runtimeType == FormatException &&
//             e.source == 'no healthy upstream') {
//           throw const ApiException('', 'Server under maintenance.');
//         }
//       } catch (e) {
//         rethrow;
//       }
//     }
//     return response;
//   }
// }

@riverpod
AifarmaCoreService aifarmaCoreService(Ref ref) {
  final httpClient = ref.watch(httpClientProvider);
  final baseUrl = ref.watch(apiBaseUrlProvider);
  final service = AifarmaCoreService.create(
    client: ChopperClient(
      client: httpClient,
      baseUrl: Uri.parse(baseUrl),
      converter: $JsonSerializableConverter(),
      // authenticator: OpenIdAuthenticator(ref),
      interceptors: [
        // BaseAuthInterceptor(ref),
        HttpLoggingInterceptor(),
      ],
    ),
  );
  return service;
}

// class OpenIdAuthenticator extends Authenticator {
//   final Ref ref;

//   OpenIdAuthenticator(this.ref);

//   @override
//   FutureOr<Request?> authenticate(
//     Request request,
//     Response response, [
//     Request? originalRequest,
//   ]) async {
//     if (response.statusCode == HttpStatus.unauthorized) {
//       final newToken = await refreshToken();

//       if (newToken != null) {
//         return request.copyWith(
//           headers: {
//             ...request.headers,
//             HttpHeaders.authorizationHeader: 'Bearer $newToken',
//           },
//         );
//       }
//     }

//     return null;
//   }

//   Future<String?> refreshToken() async {
//     final user = ref.read(userServiceProvider);
//     if (user?.refreshToken != null) {
//       final newToken = await ref
//           .read(openIdServiceProvider)
//           .refreshToken(user!.refreshToken);

//       if (newToken
//           case TokenResponseData(
//             :final accessToken,
//             :final refreshToken,
//             :final idToken,
//           )) {
//         ref.read(userServiceProvider.notifier).setCurrentUser(
//               user.copyWith(
//                 accessToken: accessToken,
//                 refreshToken: refreshToken,
//                 idToken: idToken,
//               ),
//             );
//         return accessToken;
//       }
//     }

//     return null;
//   }
// }
