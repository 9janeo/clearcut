class OrdersController < ApplicationController
	def index
		@orders = Order.all
	end

	def new
		@order = current_user.order.build
	end

	def create
    @order = current_user.order.build(order_params)

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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultant
      @consultant = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consultant_params
      params.require(:order).permit(:ordername, :ordernumber, :complete, :servicelist, :created_at, :updated_at, :user_id)
    end

end
