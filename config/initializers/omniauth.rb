OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '1036037343099902', '5031157ec309fe808675fd49cc18f062',
    :scope => 'email', :display => 'popup', :info_fields => 'name,email'
   # {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}

end