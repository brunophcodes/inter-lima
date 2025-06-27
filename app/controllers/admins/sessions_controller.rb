# frozen_string_literal: true

class Admins::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def sign_as_demo
    @demo_user ||= Admin.find_by_email('admin@interdelima.com')
    if current_admin.nil?
      sign_in(@demo_user)
      redirect_to admin_index_path, notice: 'Signed in as demo user.'
    end
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
