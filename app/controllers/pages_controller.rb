class PagesController < ApplicationController
    def main
        #index
    end
    def chart
        event = Event.find(params[:id])
        dto = EventDto.new
        dto.best_arrival_time_driver = "21:30h"
        dto.best_departure_time_client = "21:55h"
        coordinates = Coordinates.new
        coordinates.latitude = "-23.4421"
        coordinates.longitude = "43.342"
        dto.current_best_exit_coortidates = coordinates
        dto.highest_congestion_interval = "22h - 23:15h"
        dto.event = event
    end
    class EventDto
        attr_accessor :best_arrival_time_driver
        attr_accessor :best_departure_time_client
        attr_accessor :event
        attr_accessor :current_best_exit_coortidates
        attr_accessor :highest_congestion_interval
    end
    
    class Coordinates
        attr_accessor :latitude
        attr_accessor :longitude
    end
end
