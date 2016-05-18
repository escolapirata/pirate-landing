OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '1071703216199981', '7db8b7c39fe38a03e00a7062481433f7',
    :scope => 'email', :display => 'popup', :info_fields => 'name,email'
   # {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}

end