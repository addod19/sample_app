# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    # @micropost = current_user.microposts.build if logged_in?
  end

  def help; end

  def about; end
end
