# frozen_string_literal: true

module Gatherin
  module Auth
    module V1
      class PasswordsController < Devise::PasswordsController
        respond_to :json
        # POST /resource/password
        # def create
        #   super
        # end

        # PUT /resource/password
        # def update
        #   super
        # end

        # protected

        # def after_resetting_password_path_for(resource)
        #   super(resource)
        # end

        # The path used after sending reset password instructions
        # def after_sending_reset_password_instructions_path_for(resource_name)
        #   super(resource_name)
        # end
      end
    end
  end
end
