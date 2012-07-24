Rails.application.config.middleware.use OmniAuth::Builder do
  provider :SAML, {
    :assertion_consumer_service_url => "https://omniauth-rails.herokuapp.com/auth/saml/callback",
    :issuer                         => "https://omniauth-rails.herokuapp.com",
    :idp_sso_target_url             => "https://fs.thinkthroughmath.com/adfs/ls/auth/integrated/?wa=wsignin1.0&wtrealm=urn:federation:omniauth", #"https://app.onelogin.com/saml/signon/48800",    #"https://fs.thinkthroughmath.com",
    #:idp_cert_fingerprint           => "3A:63:F6:38:CE:51:88:93:F1:E4:93:83:D2:D8:34:5A:29:E9:9A:7D" #3A:63:F6:38:CE:51:88:93:F1:E4:93:83:D2:D8:34:5A:29:E9:9A:7D
     :idp_cert                       => "-----BEGIN CERTIFICATE-----
MIIFhzCCBG+gAwIBAgIHBBt3WVZhCjANBgkqhkiG9w0BAQUFADCByjELMAkGA1UE
BhMCVVMxEDAOBgNVBAgTB0FyaXpvbmExEzARBgNVBAcTClNjb3R0c2RhbGUxGjAY
BgNVBAoTEUdvRGFkZHkuY29tLCBJbmMuMTMwMQYDVQQLEypodHRwOi8vY2VydGlm
aWNhdGVzLmdvZGFkZHkuY29tL3JlcG9zaXRvcnkxMDAuBgNVBAMTJ0dvIERhZGR5
IFNlY3VyZSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTERMA8GA1UEBRMIMDc5Njky
ODcwHhcNMTIwNjA2MDMzNzU4WhcNMTMwNjA2MDMzNzU4WjBnMSAwHgYDVQQKDBdm
cy50aGlua3Rocm91Z2htYXRoLmNvbTEhMB8GA1UECwwYRG9tYWluIENvbnRyb2wg
VmFsaWRhdGVkMSAwHgYDVQQDDBdmcy50aGlua3Rocm91Z2htYXRoLmNvbTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALtoILggej1BjFKLN+KJp7prTg10
n921KTLuWP2YqJFD/k9XDX1u4bqfd5yqNIDH5oh9fZBoSa2SOub/DGrcXc78hn3y
WgzM3XgIBjksLszY0WWtMFkSJQmlOiEmnB7AfB62Att0s0IWVLHFZbf34YdNnq3y
blz6kmIFua+bx1ix4vT0n7KxaaXV2s1Ie7wmlplJckL/bKCxQCBoLDhf2if5pZ6m
d+NwERwHuA94UixmBDv/B5+BNr8seGf0jTP3SfrdfeZvCQ72MuULPUgaJ4C0lb4S
2wmcyJLiPLyRBUTl+2dfLgIyEOmgsoozl24/8vstJDjqTwBrU1cSbfC0fhMCAwEA
AaOCAdIwggHOMA8GA1UdEwEB/wQFMAMBAQAwHQYDVR0lBBYwFAYIKwYBBQUHAwEG
CCsGAQUFBwMCMA4GA1UdDwEB/wQEAwIFoDAzBgNVHR8ELDAqMCigJqAkhiJodHRw
Oi8vY3JsLmdvZGFkZHkuY29tL2dkczEtNzEuY3JsMFMGA1UdIARMMEowSAYLYIZI
AYb9bQEHFwEwOTA3BggrBgEFBQcCARYraHR0cDovL2NlcnRpZmljYXRlcy5nb2Rh
ZGR5LmNvbS9yZXBvc2l0b3J5LzCBgAYIKwYBBQUHAQEEdDByMCQGCCsGAQUFBzAB
hhhodHRwOi8vb2NzcC5nb2RhZGR5LmNvbS8wSgYIKwYBBQUHMAKGPmh0dHA6Ly9j
ZXJ0aWZpY2F0ZXMuZ29kYWRkeS5jb20vcmVwb3NpdG9yeS9nZF9pbnRlcm1lZGlh
dGUuY3J0MB8GA1UdIwQYMBaAFP2sYTKTbEXW4u6FX5q653aZaMznMD8GA1UdEQQ4
MDaCF2ZzLnRoaW5rdGhyb3VnaG1hdGguY29tght3d3cuZnMudGhpbmt0aHJvdWdo
bWF0aC5jb20wHQYDVR0OBBYEFCoPIC6S/5TDdrNOuZM61Lo6UfIOMA0GCSqGSIb3
DQEBBQUAA4IBAQAOxhqMsbVFQXHDyanltdzMfKztW2q87+DZ9neW2eHLw3FZjmSB
UbrqqdzPBDSA24tt7+4XH9gz4+i6jZcJBfBmb8LvcDBJUMRw9xlY5xzKrzNgnwyO
JH5ih0XkqlvYHpPru0oSWlTAAKocNLqsCDanj1YGlKo7DZkLjVwtS8necu5OZsHj
Nk+JF47664+nEb84N3cVjO8QTPltZzI92yPEw7BPdULmDexMP1vWNjaxyYDpOLWs
LNmhjHesOlRH+9/ImJ4+/VLU7HeIblHtUkoJNEVdH/osmrVQMNHmqlldfbJtDUNN
NYjtgCNeBOudj2tgiTycnbYJKr00+IRTcOrA
-----END CERTIFICATE-----
"
    # :name_identifier_format         => "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
  }




  #user = highgroove@thinkthroughmath.com
  #pass = apangea%123

    # provider :saml,
    # :assertion_consumer_service_url => "consumer_service_url",
    # :issuer                         => "rails-application",
    # :idp_sso_target_url             => "idp_sso_target_url",
    # :idp_cert                       => "-----BEGIN CERTIFICATE-----\n...-----END CERTIFICATE-----",
    # :idp_cert_fingerprint           => "E7:91:B2:E1:...",
    # :name_identifier_format         => "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
    #onelogin api key = 0d6e157c64a06a94f8f72dcb8737f232f75aa1c5


# :assertion_consumer_service_url - The URL at which the SAML assertion should be received. With OmniAuth this is typically http://example.com/auth/callback. Required.

# :issuer - The name of your application. Some identity providers might need this to establish the identity of the service provider requesting the login. Required.

# :idp_sso_target_url - The URL to which the authentication request should be sent. This would be on the identity provider. Required.


# :idp_cert - The identity provider's certificate in PEM format. Takes precedence over the fingerprint option below. This option or :idp_cert_fingerprint must be present.

# :idp_cert_fingerprint - The SHA1 fingerprint of the certificate, e.g. "90:CC:16:F0:8D:...". This is provided from the identity provider when setting up the relationship. This option or :idp_cert must be present.


# :name_identifier_format - Describes the format of the username required by this application. If you need the email address, use "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress". See http://docs.oasis-open.org/security/saml/v2.0/saml-core-2.0-os.pdf section 8.3 for other options. Note that the identity provider might not support all options. Optional.


end