require "pry"
require "sinatra"
require "sinatra/reloader"

# everything happens at /
get "/home" do
  # show homepage
  erb :home
end

get "/about" do
  # show homepage
  erb :home
end

get "/contact" do
  # show homepage
  erb :home
end

get "/student/:name" do
  # show studnet page
  erb params:name
end

# just keeping the following lines for possible future reference
#get parameters from the URL - two params, just step and answer
#   step = params[:step].to_i
#   answer = params[:answer]
# #setup initial variables
#   @step = 1
#   @question = "<p>1. Do you have a test for that?</p>"
#   @yesno = true
#do the correct thing according to what 'step' you are up to
#generally - update the variables to something new each time
