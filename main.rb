require "pry"
require "sinatra"
require "sinatra/reloader"

# error handlers
not_found do 
  erb :'404'
end
error { @error = request.env['sinatra_error'] ; haml :'500' }

# possible TOP LEVEL params are home, about, contact
get "/home" do 
  erb :home
end
get "/about" do 
  erb :about
end
get "/contact" do 
  erb :contact
end
get "/student/anne" do 
  erb :anne
end
get "/student/kriss" do 
  erb :kriss
end
get "/student/mark" do 
  erb :mark
end
get "/student/tom" do 
  erb :tom
end





# Joel lied - this should work but it doesn't, which is why we have the extended version as above
# get "/:page" do
#   erb params[:page]
# end
# # possible STUDENT LEVEL params are anna, kriss, mark, tom (alphabetical)
# get "/student/:name" do
#   # show studnet page
#   erb params[:name]
# end





# this should handle the contact form POST data
post "/contact" do 
  # form mail handler here
end



