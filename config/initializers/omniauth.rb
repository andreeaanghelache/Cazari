APP_ID = '0dd6626d-d2f4-4b7d-9935-1f2aa0e4496c'
APP_SECRET = 'cce9711ca97ae96deb3c38ac356c46504f1d48d7d9492410a9'

CUSTOM_PROVIDER_URL = 'http://fmi-autentificare.herokuapp.com'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :autentificare, APP_ID, APP_SECRET
end
