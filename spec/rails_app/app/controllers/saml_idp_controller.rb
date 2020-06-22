class SamlIdpController < SamlIdp::IdpController
  def idp_authenticate(email, password, url)
    { :email => email }
  end

  def idp_make_saml_response(user)
    encode_response(user[:email])
  end
end
