require "omniauth/strategies/oauth"

module OmniAuth
  module Strategies
    class Quickbooks < OmniAuth::Strategies::OAuth

      args [:consumer_key, :consumer_secret]

      option :client_options, {
        :access_token_path  => "/oauth/v1/get_access_token",
        :authorize_url      => "https://appcenter.intuit.com/Connect/Begin",
        :request_token_path => "/oauth/v1/get_request_token",
        :site               => "https://oauth.intuit.com",
      }

      uid {
        request.params['realmId']
      }

    end
  end
end