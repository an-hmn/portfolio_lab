require "pry"
require "sinatra"
require "sinatra/reloader"

# everything happens at /
# possible TOP LEVEL params are home, about, contact
get "/:page" do
  # show homepage
  erb params[:page]
end
# possible STUDNET LEVEL params are anna, kriss, mark, tom (alphabetical)
get "/student/:name" do
  # show studnet page
  erb params[:name]
end

post "/contact" do 
  # form mail handler here
end


