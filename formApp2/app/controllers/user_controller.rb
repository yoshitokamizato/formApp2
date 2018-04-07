class UserController < ApplicationController
  def index
    @html = "<h1>ハイ！</h1>"
  end
  def create

    gender = params[:gender]

    skils = params[:skils]
    skil = skils.join("、")

    user = User.new(name: params[:name], age: params[:age], address: params[:address], gender: gender[0], program: params[:program], skils: skil)
    user.save
  end
  def show
    @users = User.all
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    user = User.find(params[:id])
    user.update(name: params[:name], age: params[:age], address: params[:address], gender: params[:gender], program: params[:program], skils: params[:skils])
  end
  def destroy
    user = User.find(params[:id])
    user.destroy
  end
end
