require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/model'        #Model class
require './models/time_sheets'	#TimeSheets
 
get '/' do
	erb :index
end
 
post '/submit' do
	@model = Model.new(params[:model])
	@time_sheets = TimeSheets.new(params[:time_sheets])
	if @model.save && @time_sheets.save
		redirect '/models'
	else
		"Sorry, there was an error!"
	end
end

get '/models' do
	@models = Model.all
	@time_sheets = TimeSheets.all
	erb :models
end