class Admin::PurchasesController < ApplicationController
  
  before_action :set_admin_purchase, only: %i[ show edit update destroy ]
  
  before_action :authenticate_user!
  
  authorize_resource class: false
  
  # GET /admin/purchases or /admin/purchases.json
  def index
    #@admin_purchases = Admin::Purchase.all
    @purchases = Purchase.all
  end

  # GET /admin/purchases/1 or /admin/purchases/1.json
  def show
  end

  # GET /admin/purchases/new
  def new
    #@admin_purchase = Admin::Purchase.new
  end

  # GET /admin/purchases/1/edit
  def edit
  end

  # POST /admin/purchases or /admin/purchases.json
  def create
    @admin_purchase = Admin::Purchase.new(admin_purchase_params)

    respond_to do |format|
      if @admin_purchase.save
        format.html { redirect_to @admin_purchase, notice: "Purchase was successfully created." }
        format.json { render :show, status: :created, location: @admin_purchase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/purchases/1 or /admin/purchases/1.json
  def update
    respond_to do |format|
      if @admin_purchase.update(admin_purchase_params)
        format.html { redirect_to @admin_purchase, notice: "Purchase was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_purchase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/purchases/1 or /admin/purchases/1.json
  def destroy
    @admin_purchase.destroy
    respond_to do |format|
      format.html { redirect_to admin_purchases_url, notice: "Purchase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_purchase
      @admin_purchase = Admin::Purchase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_purchase_params
      params.fetch(:admin_purchase, {})
    end
end
