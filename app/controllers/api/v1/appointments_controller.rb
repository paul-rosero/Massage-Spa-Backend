class Api::V1::AppointmentsController < ApplicationController
    before_action :find_appointment, only: [:show, :edit, :update, :destroy]

    def index 
        @appointments = Appoointment.all
        render json: @appointments
    end

    def show
        render json: @appointment
    end

    def create 
        @appointment = Appoointment.new(appointment_params)
        save_or_update_appointment
    end

    def edit
        render json: @appointment
    end

    def update
        @appointment.update(appointment_params)
        save_or_update_appointment
    end

    def destroy
        @appointment.delete
        render json: {appointmentId: @appointment.id}
    end

    private 
    
    def appointment_params
        params.require(:appointment).permit(:massage_therapist, :client, :modality, :appointment_time, :special_request)
    end

    def find_appointment
        @appointment = Appoointment.find_by_id(params[:id])
    end

    def save_or_update_appointment
        if @appointment.save
            render json: @appointment 
        else
            render json: {errors: @appointment.errors.full_messages}
        end
    end
end
