class Api::V1::ClientsController < ApplicationController
    before_action :find_client, only: [:show, :edit, :update, :destroy]

    def index 
        @clients = Client.all
        render json: @clients
    end

    def show
        render json: @client
    end

    def create 
        @client = Client.new(client_params)
        save_or_update_client
    end

    def edit
        render json: @client
    end

    def update
        @client.update(client_params)
        save_or_update_client
    end

    def destroy
        @client.delete
        render json: {clientId: @client.id}
    end

    private 
    
    def client_params
        params.require(:client).permit(:name, :medical_history, :address, :email)
    end

    def find_client
        @client = Client.find_by_id(params[:id])
    end

    def save_or_update_client
        if @client.save
            render json: @client 
        else
            render json: {errors: @client.errors.full_messages}
        end
    end
end
