require 'sinatra'
require 'slim'

get '/' do
	slim :index
end

post '/' do
	@ideas = params[:hack_ideas]
	slim :hack_ideas
end

#:hack_ideas is a named parameter, these params are put into variable @ideas
#so basically, ANYTHING after '/' will be a parameter
#@ideas in hack_ideas.slim is this variable
get '/:hack_ideas' do
	#split string on '-', join with a ' ' in between, capitalize the first word
	@ideas = params[:hack_ideas].split('-').join(' ').capitalize
	slim :hack_ideas
end
