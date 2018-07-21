class SessionsController < ApplicationController

def new
end

def create
  #byebug
  if session[:name]
    redirect_to controller: 'application', action: 'hello'
  elsif !params[:name] || params[:name].empty?
    redirect_to login_url
  else
  session[:name] = params[:name]
  redirect_to controller: 'application', action: 'hello'
end
end



def destroy
  session.delete :name
  redirect_to :action => "create"
end

end
