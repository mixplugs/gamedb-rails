class ServersController < ApplicationController
  def new
  end
  def create
	render plain: params[:server].inspect
  end
end
