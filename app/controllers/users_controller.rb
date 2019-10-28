# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    debugger
  end

  def show
    @user = User.find(params[:id])
    debugger
  end
end
