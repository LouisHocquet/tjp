class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    @registration.save
    redirect_to root_path,
      notice: t('registration.confirmation')
  end

  def view
  end

  def index
  end

  private

  def registration_params
    params.require(:registration).permit(:team, :email, :message)
  end

end
