class HomesController < ApplicationController
  def index
    @home = Product.all
    
  end
  def show
    # byebug
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
# byebug
    @product = Product.new(home_params)

    if @product.save
      redirect_to home_path(@product.id)
    else
      render 'new'
    end
  end
private
    def home_params
      params.require(:product).permit(:name, :description, :check_box, :email, :email_confirmation,:password, :password_confirmation, [:gender])
    end

end
