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
