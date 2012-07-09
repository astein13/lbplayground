OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['206130946151276'], ENV['6ea925d5c0f83b29abcda46ec0d01cbf']
end