# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if logged_in?
  end

  def help; end

  def about; end
end
