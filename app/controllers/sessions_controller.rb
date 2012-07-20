class SessionsController < ApplicationController

    def create
    flash[:notice] = "Login Successfully"
    @provider = request.env['omniauth.auth']['provider']
    @uid      = request.env['omniauth.auth']['uid']
  end

  def failure
    flash[:notice] = "Auth failure."
  end
end
