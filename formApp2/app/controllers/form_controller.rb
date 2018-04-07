class FormController < ApplicationController

  def dispId
    id1 = params[:id1]
    id2 = params[:id2]
    form = Form.new

    if id2.nil? || id2.empty?
      #render :text => "値を入力してください"
      if  id1.nil? || id1.empty?
        flash[:notice] = "入力してください"
        redirect_to action: :search
      end

      return @form = form.search1(id1)
    end

    @form = form.search2(id1, id2)

  end

  def dispFood
    form = Form.new
    food = params[:food]
    @form = form.search3(food)
  end

  def search

  end

  def index
    form = Form.new
    @hello = form.hello
    @text = form.dispData
  end

  def show

    #Formモデルクラスを利用し、選んだ食べ物を表示
    form = Form.new
    @food_text = form.dispFood(params[:food2])

    @food = params[:food]
    @sports = params[:sports]
    @book = params[:book]

    #中身がないパラメータ（params）は nil class になる
    #=> each メソッドが使えない

    if params[:dinner].nil?
      @dinner = ["No Data"]
    else
      @dinner = params[:dinner]
    end



    if params[:sushi].nil?
      @sushi = ["No Data"]
    else
      @sushi = params[:sushi]
    end



    #Parameters: {"utf8"=>"✓", "gender"=>["女性"], "commit"=>"送信"}
    if params[:gender].nil?
      @gender = "No Data"
    else
      @select_gender = params[:gender][0]
    end


    if params[:programming].nil?
      @programming = "No Data"
    else
      @programming = params[:programming]
    end

    @pet_dog = params[:pet_dog]
    @pet_cat = params[:pet_cat]

    #データベースへデータを登録
    form = Form.new(food: params[:food], sports: params[:sports], book: params[:book], foods: params[:food2], dinner: params[:dinner], gender: params[:gender], programming: params[:programming])
    form.save

    slime = Slime.new
    slime.hello

  end

  def dispData
    all_data = Form.all
    @dispData = ""
    all_data.each do |data|
      @dispData += "食べ物：#{data.food}"
    end
  end

  def show_get
    @login = true
    @method = "GETメソッドでの送信"
    @food = params[:food]
    @sports = params[:sports]
    @book = params[:book]
  end
end
