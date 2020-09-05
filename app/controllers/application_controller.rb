class ApplicationController < ActionController::Base
    def welcomeMessage
        render html: "Hype : Carry your squad with you. (Currently under development)"
    end
end
