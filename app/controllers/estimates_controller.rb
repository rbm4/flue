class EstimatesController < ApplicationController
    def listEvents
        events = Event.all()
        render json: events
    end
    def newEvent
        event = Event.new
        event.tipo = params[:tipo]
        event.name = params[:name]
        event.data = params[:data]
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
        render json: event
    end
end
