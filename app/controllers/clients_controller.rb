class ClientsController < ApplicationController
  def index
  	@clients = Client.all
  end

  def show
  	@client = Client.find(params[:id])
  end

  def new
  	@client = Client.new
  end

  def create
  	@client = Client.create(
  		name: params[:name],
  		age: params[:age],
  		phone_number: params[:phone_number]
  		)
  	if @client.save 
  		redirect_to "/clients"
  	end
  end

  def destroy
  	@client = Client.find(params[:id])
  	@client.destroy
  	redirect_to "/clients"
  end
end
