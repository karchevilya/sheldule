# frozen_string_literal: true

class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_item, only: %i[show edit update destroy]
  # before_action :admin?, only: %i[edit]

  def index
    @items = Item.all.order(:number)
    @group = ''
  end

  def create
    item = Item.create(items_params)
    if item.persisted?
      redirect_to items_path
    else
      render json: item.errors, status: :unprocessable_entity
    end
  end

  def new; end

  def show; end

  def edit; end

  def update
    if @item.update(items_params)
      redirect_to item_path
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @item.update(items_params)
      redirect_to items_path
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def is_821
    @items = Item.where('number < 6').order(:number)
    @group = 'ИC-821'
    render :index
  end

  def is_822
    @items = Item.where('number > 5 and number < 11').order(:number)
    @group = 'ИC-822'
    render :index
  end

  def is_823
    @items = Item.where('number > 10 and number <16').order(:number)
    @group = 'ИC-823'
    render :index
  end

  private

  def items_params
    params.permit(:day, :number, :st1, :st2, :st3, :st4, :st5, :st6)
  end

  def find_item
    @item = Item.where(id: params[:id]).first
    render_404 unless @item
  end

  def admin?
    true
    # render_403 unless params[:admin]
  end
end
  