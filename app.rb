require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
		@name = params[:name]
		@name.reverse
	end
	
	get '/square/:number' do
		@number = params[:number].to_i
		(@number * @number).to_s
	end

  get '/say/:number/:phrase' do
		@number = params[:number].to_i
		@phrase = params[:phrase]
		final_string = ""
		@number.times do
			final_string += @phrase
		end
		final_string
	end
	

end