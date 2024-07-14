Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], {
    scope: 'email,profile',
    prompt: 'select_account',
    access_type: 'offline',
    redirect_uri: 'https://www.ohenro-running.com/auth/google_oauth2/callback'
  }
end

OmniAuth.config.on_failure = Proc.new { |env|
  message_key = env['omniauth.error.type']
  error = env['omniauth.error']
  strategy = env['omniauth.strategy']

  Rails.logger.error("OmniAuth error: #{message_key}")
  Rails.logger.error("OmniAuth error: #{error.inspect}")
  Rails.logger.error("OmniAuth strategy: #{strategy.inspect}")

  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}
