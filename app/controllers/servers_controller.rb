class ServersController < ApplicationController

  def index
    @servers = Server.all
  end

  def show
    @server = Server.find(params[:id])
  end

  def new
  end

  def create
	@server = Server.new(server_params)
 
    @server.save
    redirect_to @server
  end

  def destroy
    @server = Server.find(params[:id])
    @server.destroy
 
    redirect_to servers_path
  end

  private
    def server_params
	  params.require(:server).permit(:running)
	end

end
