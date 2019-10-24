# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: 'Hello from beautiful Athens, Greece'
  end
end
