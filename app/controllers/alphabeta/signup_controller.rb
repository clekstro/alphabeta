require_dependency "alphabeta/application_controller"

module Alphabeta
  class SignupController < ApplicationController

    layout 'application'

    def new
      @signup = Alphabeta::Signup.new
    end

    def create
      @signup = Alphabeta::Signup.new(params[:signup])
      if @signup.save
        SignupMailer.intro_mail(@signup.email).deliver
        flash[:notice] = I18n.t('signup_successful')
        redirect_to root_path
      else 
        render action: 'new'
      end
    end
  end
end
