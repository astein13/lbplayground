OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '206130946151276', '6ea925d5c0f83b29abcda46ec0d01cbf'
end