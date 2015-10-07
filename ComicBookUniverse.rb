require "sinatra"
require "mandrill"

m = Mandrill::API.new

get "/ComicBookUniverse" do
	erb :ComicBookUniverse
end

get "/StanLee" do
	erb :StanLee
end

get "/manga" do
end
get "/anime" do
end
get "/collectibles" do
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



	