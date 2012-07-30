Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml_rstr, {
    :assertion_consumer_service_url => "https://omniauth-rails.herokuapp.com/auth/saml_rstr/callback",
    :issuer                         => "https://omniauth-rails.herokuapp.com",
    :idp_sso_target_url             => "https://fs.thinkthroughmath.com/adfs/ls/auth/integrated/?wa=wsignin1.0&wtrealm=urn:federation:omniauth",
    :idp_cert_fingerprint           => "76:C5:6A:64:E0:D8:81:44:11:24:F2:9C:1B:41:56:27:6E:3B:FB:8C"
  }

# :assertion_consumer_service_url - The URL at which the SAML assertion should be received. With OmniAuth this is typically http://example.com/auth/callback. Required.

# :issuer - The name of your application. Some identity providers might need this to establish the identity of the service provider requesting the login. Required.

# :idp_sso_target_url - The URL to which the authentication request should be sent. This would be on the identity provider. Required.

# :idp_cert - The identity provider's certificate in PEM format. Takes precedence over the fingerprint option below. This option or :idp_cert_fingerprint must be present.

# :idp_cert_fingerprint - The SHA1 fingerprint of the certificate, e.g. "90:CC:16:F0:8D:...". This is provided from the identity provider when setting up the relationship. This option or :idp_cert must be present.

# :name_identifier_format - Describes the format of the username required by this application. If you need the email address, use "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress". See http://docs.oasis-open.org/security/saml/v2.0/saml-core-2.0-os.pdf section 8.3 for other options. Note that the identity provider might not support all options. Optional.

end