# change to ProtectedController ApplicationController
class ItemsController < ProtectedController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all

    render json: @items
  end

  # GET /items/1
  # GET /items/1.json
  def show
    render json: @item
  end

  # POST /items
  # POST /items.json
  def create
    @list = current_user.lists.find(params[:list_id])
    @item = @list.items.build(item_params)
    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    if @item.update(item_params)
      head :no_content
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy

    head :no_content
  end

  private

    def set_item
      @item = Item.find(params[:id])
      fail ActiveRecord::RecordNotFound unless @item.list.user == current_user
    end

    def item_params
      params.require(:item).permit(:todo, :list)
    end
end
