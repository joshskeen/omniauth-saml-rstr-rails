class SessionsController < ApplicationController

    def create
    flash[:notice] = "Login Successfully"
    @provider = request.env['omniauth.auth']['provider']
    @uid      = request.env['omniauth.auth']['uid']
    #start a session here, etc!
  end

  def failure
    flash[:notice] = "Auth failure."
  end
end
