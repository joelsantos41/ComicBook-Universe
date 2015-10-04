require "sinatra"

set :bind, "0.0.0.0"

get "/ComicBook Universe" do
	"ComicBook Universe, #{params[:ComicBook]} #{params[:Universe]}" + rand(10).to_s
end

get "/Marvel Section" do
	"Marvel Universe comics found here, #{params[:slithy]}" 
end

get "/DC Universe Section" do
	"DC Universe comics found here, #{params[:slithy]}" 
end

	