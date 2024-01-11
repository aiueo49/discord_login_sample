# こっちで何度も試したけど、うまくいかなかった
# しかし、下のコードでうまくいったあと、こっちでもうまくいった
# 原因不明
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :discord,
#            Rails.application.credentials.discord[:client_id],
#            Rails.application.credentials.discord[:client_secret],
#            scope: 'email'
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :discord, Rails.application.credentials.discord[:client_id], Rails.application.credentials.discord[:client_secret], scope: 'identify email'
end
