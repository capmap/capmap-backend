class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:session_token].present?
      @session = Session.find_by(token: session[:session_token])
      return @session.user if @session
    elsif params[:sessionKey].present?
      @session = Session.find_by(token: params[:sessionKey])
      return @session.user if @session
    end

    return nil
  end
end
