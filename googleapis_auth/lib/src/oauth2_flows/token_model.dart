import 'dart:async';
import 'dart:html';
import 'dart:js';

import 'package:google_identity_services_web/loader.dart' as gis_loader;
import 'package:google_identity_services_web/oauth2.dart' as gis;

import '../access_credentials.dart';
import '../access_token.dart';
import '../authentication_exception.dart';
import '../utils.dart';

JsObject get _googleAccountsId =>
    ((context['google'] as JsObject)['accounts'] as JsObject)['id'] as JsObject;

/// Obtains [AccessCredentials] using the
/// [Google Identity Services](https://developers.google.com/identity/oauth2/web/guides/overview)
/// token model.
///
/// The returned [AccessCredentials] will *always* have a `null` value for
/// [AccessCredentials.refreshToken] and
/// [AccessCredentials.idToken].
///
/// See
/// [Choose a user authorization model](https://developers.google.com/identity/oauth2/web/guides/choose-authorization-model)
/// to understand the tradeoffs between using this function and
/// [requestAuthorizationCode].
///
/// See https://developers.google.com/identity/oauth2/web/guides/use-token-model
/// and https://developers.google.com/identity/oauth2/web/reference/js-reference
/// for more details.
Future<AccessCredentials> requestAccessCredentials({
  required String clientId,
  required Iterable<String> scopes,
  String prompt = 'select_account',
  @Deprecated('Undocumented feature. Do not include in production code.')
  String? logLevel,
}) async {
  await gis_loader.loadWebSdk();
  if (logLevel != null) _googleAccountsId.callMethod('setLogLevel', [logLevel]);

  final completer = Completer<AccessCredentials>();

  void callback(gis.TokenResponse response) {
    if (response.error != null) {
      window.console.log(response);
      completer.completeError(
        AuthenticationException(
          response.error!,
          errorDescription: response.error_description,
          errorUri: response.error_uri,
        ),
      );
      return;
    }

    final token = AccessToken(
      response.token_type!,
      response.access_token!,
      expiryDate(response.expires_in!),
    );

    final creds = AccessCredentials(token, null, response.scope);

    completer.complete(creds);
  }

  final config = gis.TokenClientConfig(
    callback: allowInterop(callback),
    client_id: clientId,
    scope: scopes.toList(),
    prompt: prompt,
  );

  final client = gis.oauth2.initTokenClient(config);

  client.requestAccessToken();

  return completer.future;
}

/// Obtains [CodeResponse] using the
/// [Google Identity Services](https://developers.google.com/identity/oauth2/web/guides/overview)
/// code model.
///
/// See
/// [Choose a user authorization model](https://developers.google.com/identity/oauth2/web/guides/choose-authorization-model)
/// to understand the tradeoffs between using this function and
/// [requestAccessCredentials].
///
/// See https://developers.google.com/identity/oauth2/web/guides/use-code-model
/// and https://developers.google.com/identity/oauth2/web/reference/js-reference
/// for more details.
Future<CodeResponse> requestAuthorizationCode({
  required String clientId,
  required Iterable<String> scopes,
  String? state,
  String? hint,
  String? hostedDomain,
  @Deprecated('Undocumented feature. Do not include in production code.')
  String? logLevel,
}) async {
  await gis_loader.loadWebSdk();
  if (logLevel != null) _googleAccountsId.callMethod('setLogLevel', [logLevel]);

  final completer = Completer<CodeResponse>();

  void callback(gis.CodeResponse response) {
    if (response.error != null) {
      window.console.log(response);
      completer.completeError(
        AuthenticationException(
          response.error!,
          errorDescription: response.error_description,
          errorUri: response.error_uri,
        ),
      );
      return;
    }

    completer.complete(CodeResponse._(
      code: response.code!,
      scopes: response.scope,
      state: response.state,
    ));
  }

  final config = gis.CodeClientConfig(
    callback: allowInterop(callback),
    client_id: clientId,
    scope: scopes.toList(),
    state: state,
    login_hint: hint,
    hd: hostedDomain,
  );

  final client = gis.oauth2.initCodeClient(config);

  client.requestCode();

  return completer.future;
}

/// Revokes all of the scopes that the user granted to the app.
///
/// A valid [accessTokenValue] is required to revoke the permission.
Future<void> revokeConsent(String accessTokenValue) {
  final completer = Completer<void>();

  void done(Object? arg) {
    window.console.log(arg);
    completer.complete();
  }

  gis.oauth2.revoke(accessTokenValue, allowInterop(done));

  return completer.future;
}

/// Result from a successful call to [requestAuthorizationCode].
///
/// See https://developers.google.com/identity/oauth2/web/reference/js-reference#CodeResponse
/// for more details.
class CodeResponse {
  CodeResponse._({required this.code, required this.scopes, this.state});

  /// The authorization code of a successful token response.
  final String code;

  /// The list of scopes that are approved by the user.
  final List<String> scopes;

  /// The string value that your application uses to maintain state between your
  /// authorization request and the response.
  final String? state;

  @override
  String toString() => 'CodeResponse: $code';
}
