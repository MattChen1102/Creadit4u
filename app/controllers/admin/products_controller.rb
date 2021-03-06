class Admin::ProductsController < Admin::BaseController
  def index
    @products = Product.includes(:category).page(params[:page])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path, notice: '商品新增成功'
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to admin_products_path, notice: '更新成功'
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path, notice: '商品已刪除成功'
  end

  private

  def product_params
    params.require(:product).permit(
      :name, :description, :content,
      :active, :price, :category_id
    )
  end
end
