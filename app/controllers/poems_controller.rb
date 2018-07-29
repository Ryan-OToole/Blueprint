class PoemsController < ApplicationController
    before_action :set_poem, only: [:show,:update,:destroy]

  def index
    poems = Poem.all
    render json: poems, status: 200
  end

  def show
    @poem = Poem.find_by(id: params[:id])
    render json: @poem
  end

  def create
    poem = Poem.create(poem_params)
    PoemList.create(user_id: params["user_id"], poem_id: poem.id)

    render json: poem, status: 201
  end

  def update
    @poem.update(poem_params)
    render json: @poem, status: 200
  end

  def destroy
    poemId = @poem.id
    @poem.destroy
    render json: {message:"Zap! Poem b gone", poemId:poemId}
  end

  private
    def poem_params
      params.permit(:body, :title)
    end

    def set_poem
      @poem = Poem.find(params[:id])
    end

end
