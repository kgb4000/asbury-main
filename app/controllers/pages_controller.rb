class PagesController < ApplicationController
  def home
  	@events = Event.order("created_at DESC").limit(3)
  	@posts = Post.order("created_at DESC").limit(3)
  end
end
