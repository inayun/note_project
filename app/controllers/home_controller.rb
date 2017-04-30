class HomeController < ApplicationController
  def index
  end
  
  def classlist
    if user_signed_in?
      @sublist = Category.where(email: current_user.email)
      @usermail = current_user.email
      
      if params[:cateName].present?
        @notelist = Notelist.where(["noteCate = ? and email = ?", params[:cateName] , current_user.email])
      else  
        @notelist = Notelist.where(email: current_user.email)
      end
      
      render :layout => 'classlist'
    else
      redirect_to '/home/forbid'
    end
  end
  
  def main
    if user_signed_in?
        render :layout => 'main' #메인css만 적용시켜 주기 위해서 render 함수를 씀
    else
      redirect_to '/users/sign_in' #로그인이 안되있을경우는 자동적으로 로그인페이지로 돌려버림
    end
  end
  
  def login
      render :layout => 'todolist'
  end
  
  def todolist
    if user_signed_in?
      @currentUser = current_user.email
      render :layout => 'todolist'
    else    
      redirect_to '/home/forbid'
    end
  end
  
  def note
    if user_signed_in?
      @sublist = Category.where(email: current_user.email)
    else    
      redirect_to '/home/forbid'
    end
  end
  
  def renote
    if user_signed_in?
      @sublist = Category.where(email: current_user.email)
      @readone = Notelist.find(params[:id])
      if @readone.email != current_user.email
        redirect_to '/home/forbid'
      end
    else    
      redirect_to '/home/forbid'
    end
  end
  
  def listWrite
    if user_signed_in?
      newList = Notelist.new
      newList.email = current_user.email
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
  
  def setadd #과목추가하는 기능
    newCate = Category.new
    newCate.email = current_user.email
    newCate.cateName = params[:newsub]
    newCate.save
    redirect_to "/home/classlist"
  end
  def setdel #과목삭제하는 기능
    delCate = Category.where(cateName: params[:delsub])
    delList = Notelist.where(noteCate: params[:delsub])
    
    delCate.each do |x|
      x.destroy
    end
    delList.each do |y|
      y.destroy
    end
    redirect_to "/home/classlist"
  end
  def searchlist #검색한거 보여주는 기능
    @sublist = Category.where(email: current_user.email)    
    @keyword= params[:keyword]
    @serti= Notelist.where(["noteName like ? and email = ?", "%#{@keyword}%",current_user.email])
    @sercon= Notelist.where(["noteCont like ? and email = ?",  "%#{@keyword}%",current_user.email])
    render :layout => 'classlist'
  end
end
