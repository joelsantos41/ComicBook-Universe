require "sinatra"
require "mandrill"

m = Mandrill::API.new
IMAGES =[
	{title: "Samurai Champloo", url:"http://thefindmag.com/wp-content/uploads/Samurai-Champloo.jpg"}
]
get '/images/:id' do |index|
    index = index.to_i
    @image = IMAGES[index]

    haml :'images/show', layout:true
end

get "/ComicBookUniverse" do
	erb :ComicBookUniverse
end

get "/StanLee" do
	erb :StanLee
end
get "/comics" do
	erb :comics
end
get "/manga" do
	erb :manga
end
get "/anime" do
	erb :anime
end
get "/collectibles" do
	erb :collectibles
end
get "/contact" do
	erb :contact
end
post "/contact" do
	message = {
		:subject=> "#{params[:subject]}",
		:from_name=> "#{params[:from_name]}",
		:text=> "Contact page}",
		:to=> [{:email=> "thisIsNotReal@hotmail.com",
				:name=> "IT Department"}],
		:html=> "<html>#{params[:body]}</html>",
		:from_email=> "#{params[:email]}" 
	}
	sending = m.messages.send (message)
	print sending
end



	