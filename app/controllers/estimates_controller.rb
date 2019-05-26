class EstimatesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def listEvents
        events = Event.all
        render json: events
    end
    def estimateEvent
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
        render json: dto
    end
    def estimateScreen
        events = Event.all
        @dtos = []
        events.each do |event|
            dto = EventDto.new
            dto.best_arrival_time_driver = String(rand(19..22)) + ":30h"
            dto.best_departure_time_client = String(rand(21..22)) + ":55h"
            coordinates = Coordinates.new
            coordinates.latitude = "-23." + String(rand(21..4442))
            coordinates.longitude = String(rand(38..43)) + ".342"
            dto.current_best_exit_coortidates = coordinates
            dto.highest_congestion_interval = String(rand(20..22)) + "h - 23:15h"
            dto.event = event
            @dtos << dto
        end
        p @dtos
    end
    def newEvent
        event = Event.new
        event.tipo = params[:tipo]
        event.name = params[:name]
        event.categoria = params[:categoria]
        event.descricao = params[:descricao]
        event.participantes = params[:participantes]
        event.hora_fim  = params[:hora_fim]
        event.hora_inicio  = params[:hora_inicio]
        event.estado  = params[:estado]
        event.cidade  = params[:cidade]
        event.endereco  = params[:endereco]
        event.link = params[:link]
        event.save
        render 'pages/main'
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
