class PlayersController < ApplicationController

  def create
		@server = Server.find(params[:server_id])
		@player = @server.players.create(player_params)
		redirect_to server_path(@server)
	end

	def destroy
    @server = Server.find(params[:server_id])
		@player = @server.players.create(player_params)
    @player.destroy
 
    redirect_to server_players_path
  end

	private
		def player_params
			params.require(:player).permit(:name, :level, :health, :career)
		end

end
