class AppointmentsController < ApplicationController
  before_action :all_appointments, only: [:index, :create, :update, :destroy]
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
  end

  def update
    @appointment.update(appointment_params)
  end

  def destroy
    @appointment.destroy
  end

  private
    
    def all_appointments
      @appointments = Appointment.all
    end

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:doctor_id, :patient_id, :appt_time)
    end
    
end
