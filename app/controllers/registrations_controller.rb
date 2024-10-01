class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
    @categories = Category.all
    if params[:registration_info]
      @registration.firstname = params[:registration_info][:firstname] if params[:registration_info][:firstname]
      @registration.lastname = params[:registration_info][:lastname] if params[:registration_info][:lastname]
      @registration.email = params[:registration_info][:email] if params[:registration_info][:email]
      @registration.phone = params[:registration_info][:phone] if params[:registration_info][:phone]
      @registration.club_name = params[:registration_info][:club_name] if params[:registration_info][:club_name]
      @registration.country = params[:registration_info][:country] if params[:registration_info][:country]
      @registration.category_ids = params[:registration_info][:category_ids] if params[:registration_info][:category_ids]
      @firstname_errors =  params[:registration_info][:errors][:firstname]
      @lastname_errors =  params[:registration_info][:errors][:lastname]
      @email_errors =  params[:registration_info][:errors][:email]
      @phone_errors =  params[:registration_info][:errors][:phone]
      @club_name_errors =  params[:registration_info][:errors][:club_name]
      @country_errors =  params[:registration_info][:errors][:country]
      @category_ids_errors =  params[:registration_info][:errors][:category_ids]
    end
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      redirect_to root_path,
        notice: t('registration.confirmation')
    else
      redirect_to new_registration_path(
        registration_info: {
          firstname: @registration.firstname,
          lastname: @registration.lastname,
          email: @registration.email,
          phone: @registration.phone,
          club_name: @registration.club_name,
          country: @registration.country,
          category_ids: @registration.category_ids,
          errors: @registration.errors.messages
        }
      )
    end
  end

  def view
  end

  def index
  end

  private

  def registration_params
    params.require(:registration).permit(:firstname, :lastname, :phone, :club_name, :email, :country, category_ids: [])
  end
end
