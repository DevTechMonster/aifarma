// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../authentication/openid_authentication.dart';
// import 'client_index.dart';
// import 'debi_service.swagger.dart' show $JsonSerializableConverter;

part 'api_service.g.dart';

class UnauthorizedException implements Exception {
  const UnauthorizedException();

  @override
  String toString() {
    return 'UnauthorizedException';
  }
}

@riverpod
String apiBaseUrl(Ref ref) {
  throw UnimplementedError();
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

// @riverpod
// AifarmaCoreService aifarmaCoreService(Ref ref) {
//   final httpClient = ref.watch(httpClientProvider);
//   final baseUrl =
//       '${ref.watch(apiBaseUrlProvider)}${ref.watch(debiCorePathProvider)}';
//   final service = DebiService.create(
//     client: ChopperClient(
//       client: httpClient,
//       baseUrl: Uri.parse(baseUrl),
//       converter: $JsonSerializableConverter(),
//       authenticator: OpenIdAuthenticator(ref),
//       interceptors: [
//         BaseAuthInterceptor(ref),
//         HttpLoggingInterceptor(),
//       ],
//     ),
//   );
//   return service;
// }


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
