Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], {
    scope: 'email,profile',
    prompt: 'select_account',
    access_type: 'offline',
    redirect_uri: 'https://www.ohenro-running.com/auth/google_oauth2/callback'
  }
end
