class OrdersController < ApplicationController
	before_action :set_order, only: [:show, :edit, :update, :destroy]
	
	def create
		@order = Order.new(order_params)

		if @order.save
			render json: @order
		else
			render json: @order.errors, status: :unprocessable_entity
		end
	end

	def index
		@orders = Order.all
	end

	def new
		@order = current_user.orders.build
	end

	def create
    @order = current_user.orders.build(order_params)

    respond_to do |format|
      if @order.save
        #@order.grab_tweets
        format.html { redirect_to @order, notice: 'Keyword was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

	def show
	end

	def edit
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:ordername, :ordernumber, :complete, :servicelist, :updated_at)
    end
end
