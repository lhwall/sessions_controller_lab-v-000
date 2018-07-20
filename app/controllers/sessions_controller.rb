class SessionsController < ApplicationController

def new
end

def create
  byebug
  if session[:name]
    redirect_to controller: "application", action: "hello"
  else
  session[:name] = params[:name]
  redirect_to :action => "new"
end
end

def destroy
end

end
