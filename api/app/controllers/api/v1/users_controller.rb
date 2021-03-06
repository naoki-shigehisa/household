class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    @all_user_count = users.count
    @users = users
    render json: { status: 'SUCCESS', all_user_count:@all_user_count , users: @users }
  end

  def show
    user = User.find(params[:id])
    @user = user
    render json: { status: 'SUCCESS', user: @user }
  end

  def create
    old_user = User.where({name: params[:name]})
    if old_user.count == 0 then
      user = User.create({name: params[:name], passwd: params[:passwd]})
      render json: { status: 'SUCCESS'}
    else
      render json: { status: 'ERROR', message: 'そのユーザー名は既に使用されています'}
    end
  end

  def update
    user = User.find(params[:id])
    user.passwd = params[:passwd]
    user.save
    render json: { status: 'SUCCESS'}
  end

  def destroy
    User.find(params[:id]).destroy
    render json: { status: 'SUCCESS'}
  end

  def check
    user = User.where({name:params[:name]})
    if user.count == 0 then
      render json: { status: 'ERROR', message: 'ユーザーが見つかりません'}
    else
      user_pass = user[0]["passwd"]
      input_pass = params[:passwd]
      if user_pass == input_pass then
        @id = user[0]["id"]
        render json: { status: 'SUCCESS', user_id: @id}
      else
        render json: { status: 'ERROR', message: 'パスワードが誤っています'}
      end
    end
  end
end