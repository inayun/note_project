class HomeController < ApplicationController
  def index
  end
  
  def classlist
    
    
    @sublist = Category.all
    
    
    if params[:cateName].present?
      @notelist = Notelist.where(noteCate: params[:cateName])
    else  
      @notelist = Notelist.all
    end
    

    render :layout => 'classlist'
    
  end
  
  def main
    render :layout => 'main'
  end
  
  def login
  end
  
  def todolist
    render :layout => 'todolist'
  end
  
  def note
    
    @sublist = Category.all
    
  end
  
   def listWrite
    newList = Notelist.new
    newList.noteName = params[:title]
    newList.noteCont = params[:content]
    newList.noteCate = params[:category]
    newList.date = params[:date]
    newList.save
    
    redirect_to "/home/classlist"
    
  end
  
  
end
