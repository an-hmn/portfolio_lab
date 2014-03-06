require "pry"
require "sinatra"
require "sinatra/reloader"
require "pony"


# error handlers
not_found do 
  erb :'404'
end
error { @error = request.env['sinatra_error'] ; haml :'500' }

# possible TOP LEVEL params are home, about, contact

get '/' do
  erb :home
end
get "/home" do 
  erb :home
end
get "/about" do 
  erb :about
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
get "/success" do
erb :success  
end
get "/contact" do 
  erb :contact
end
post '/contact' do
  Pony.mail :from => params[:name],
            :to => 'youremail@gmail.com',
            :subject => params[:subject],
            :body => params[:content],
            :via => :smtp,
            :via_options => {
            :address => 'smtp.gmail.com',
            :port => 587,
            :enable_starttls_auto => true,
            :user_name => 'your_user_name@gmail.com',
            :password => 'your_gmail_password',
            :authentication => :plain,
            :domain => 'HELO'}
          
redirect "/success", 303

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




   




 





