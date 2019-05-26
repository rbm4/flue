class EstimatesController < ApplicationController
    def listEvents
        return Event.all()
    end
end
