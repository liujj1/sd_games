class LoginController < ApplicationController
  def new
    if session[:user_id]
      redirect_to login_index_path
      return
    end
    @user = User.new
  end

  def index
    respond_to do |format|
      if !session[:user_id].blank?
        @user = User.find session[:user_id]
        if @user
          format.html
        else
          format.html { redirect_to new_login_path }
        end
      else
        format.html { redirect_to new_login_path }
      end
    end
  end

  def aa
    respond_to do |format|
      if !session[:user_id].blank?
        @user = User.find session[:user_id]
        if @user
          format.json do
            if @user.valid_number
              @prize = Prize.prize_leve(@user)
              @number = @user.number
              if @prize
                @status = @prize.leve
              else
                @status = 0
              end
            else
              @status = 0
              @number = 0
            end
            render json: {status: @status, number: @number}
          end
        else
          format.html { redirect_to new_login_path }
        end
      else
        format.html { redirect_to new_login_path }
      end
    end
  end

  def create
    if !session[:user_id].blank?
      @user = User.where(tel: params[:user][:tel]).first
      if @user
        redirect_to login_index_path
      else
        redirect_to new_login_path
      end
    elsif !params[:user][:tel].blank?
      @user = User.where(tel: params[:user][:tel]).first
      if @user
        session[:user_id]= @user.id
        redirect_to login_index_path
      else
        @user = User.new(tel: params[:user][:tel])
        if @user.save
          session[:user_id]= @user.id
          redirect_to login_index_path
        else
          redirect_to new_login_path, alert: @user.errors.to_a.join(",")
        end
      end
    else
      redirect_to new_login_path, alert: "请填入电话号码!"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to new_login_path, alert: "已注销登录,请重新登录!"
  end

end
