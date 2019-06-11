class ApplicationController < ActionController::API

    def issue_token(payload)
        JWT.encode(payload, "secret", "HS256")
    end 
end
