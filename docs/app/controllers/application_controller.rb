class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include MarkdownHelper

  before_action :set_sage_theme

  private

  def set_sage_theme
    session["SAGE_THEME"] ||= SageRails::SAGE_THEMES[:LEGACY]
    if params[:sage_theme]
      session["SAGE_THEME"] = params[:sage_theme]
    end

    SageRails.sage_theme = session["SAGE_THEME"]
  end
end
