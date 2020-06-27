class Api::V1::AppointmentsController < ApplicationController
    before_action :find_appointment, only: [:show, :edit, :update, :destroy]

    def index 
        @appointments = Appointment.all
        render json: @appointments
    end

    def show 
        
        render json: @appointment
    end

    def create 
        @appointment = Appointment.new(appointment_params)
       
        if @appointment.save
            render json: @appointment 
        else
            render json: {errors: @appointment.errors.full_messages}
        end
    end

    def edit
        render json: @appointment
    end

    def update
        if @appointment.update(appointment_params)
            render json: @appointment 
        else
            render json: {errors: @appointment.errors.full_messages}
        end
    end

    def destroy
        @appointment.delete
        render json: {appointmentId: @appointment.id}
    end

    private 

    def appointment_params
        params.require(:appointment).permit(:massage_therapist_id, :client_id, :modality, :date_and_time, :special_request)
    end

    def find_appointment
        @appointment = Appointment.find_by_id(params[:id])
    end

end
