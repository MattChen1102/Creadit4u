class Admin::OrdersController < Admin::BaseController
  def index
    @orders = Order.page(params[:page])
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items.includes(:product)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(order_params)
      @order.calculate_amount
      redirect_to admin_order_path(@order), notice: '訂單已更新成功'
    else
      render :edit
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to admin_order_path(@order), notice: '訂單已刪除成功'
  end



  private

  def order_params
    params.require(:order).permit(
      :name, :email, :mobile, :paid,
      order_items_attributes: [:quantity, :product_id, :price, :_destroy, :id]
    )
  end
end