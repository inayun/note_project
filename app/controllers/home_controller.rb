class HomeController < ApplicationController
  def index
  end
  
  def classlist
    if user_signed_in?
      @sublist = Category.all
      if params[:cateName].present?
        @notelist = Notelist.where(noteCate: params[:cateName])
      else  
        @notelist = Notelist.all
      end
      render :layout => 'classlist'
    
    else
      redirect_to '/home/forbid'
    end

  end
  
  def main
    if user_signed_in?
        render :layout => 'main'
    else
      redirect_to '/users/sign_in'
    end
  end
  
  def login
    
  end
  
  def todolist
    if user_signed_in?
      render :layout => 'todolist'
    else    
      redirect_to '/home/forbid'
    end
  end
  
  def note
    if user_signed_in?
      @sublist = Category.all
    else    
      redirect_to '/home/forbid'
    end
  end
  
   def listWrite
     
    if user_signed_in?
      newList = Notelist.new
      newList.noteName = params[:title]
      newList.noteCont = params[:content]
      newList.noteCate = params[:category]
      newList.date = params[:date]
      newList.save
      redirect_to "/home/classlist"
    else    
      redirect_to '/home/forbid'
    end
  end
end
