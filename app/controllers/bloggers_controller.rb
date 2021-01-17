class BloggersController < ApplicationController
  before_action :set_blogger, only: [:show]
  
  def index
    @bloggers = Blogger.all
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.create(blogger_params(:name, :bio, :age))
    if @blogger.valid?
      redirect_to blogger_path(@blogger)
    else
      flash[:messages] = @blogger.errors.full_messages
      redirect_to new_blogger_path
    end
  end

  def show
  end

  private

  def set_blogger
    @blogger = Blogger.find(params[:id])
  end

  def blogger_params(*args)
    params.require(:blogger).permit(*args)
  end
end
