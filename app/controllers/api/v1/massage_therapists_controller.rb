class Api::V1::MassageTherapistsController < ApplicationController
    before_action :find_therapist, only: [:show, :edit, :update, :destroy]

    def index 
        @therapist = MassageTherapist.all
        render json: @therapists
    end

    def show
        render json: @therapist
    end

    def create 
        @therapist = MassageTherapist.new(therapist_params)
        save_or_update_therapist
    end

    def edit
        render json: @therapist
    end

    def update
        @therapist.update(therapist_params)
        save_or_update_therapist
    end

    def destroy
        @therapist.delete
        render json: {therapistId: @therapist.id}
    end

    private 
    
    def therapist_params
        params.require(:therapist).permit(:name, :sex, :rating)
    end

    def find_therapist
        @therapist = MassageTherapist.find_by_id(params[:id])
    end

    def save_or_update_therapist
        if @therapist.save
            render json: @therapist 
        else
            render json: {errors: @therapist.errors.full_messages}
        end
    end
end
