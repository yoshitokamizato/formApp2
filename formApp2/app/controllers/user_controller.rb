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


  def searchId
    id1 = params[:id1]
    id2 = params[:id2]
    user = User.new

    if id2.nil? || id2.empty?
      #render :text => "値を入力してください"
      if  id1.nil? || id1.empty?
        flash[:notice] = "入力してください"
        redirect_to action: :search
      end

      return @user = user.searchAll
    end

    @user = user.searchId(id1, id2)
  end

  def searchData
    user = User.new
    @user = user.searchData(params[:user])
  end
end
