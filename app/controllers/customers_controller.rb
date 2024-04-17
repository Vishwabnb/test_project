class CustomersController < ApplicationController
  before_action :set_customer, only: %i[ show edit update destroy ]
  before_action :authenticate_customer!


  # GET /customers or /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1 or /customers/1.json
  def show
  @customer = Customer.find(params[:id])
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find_by(id: params[:id])
    if @customer != current_customer
      flash[:alert] = "You can only edit your own profile."
      redirect_to customers_path
      
    end
  end

  # POST /customers or /customers.json
  def create
    @customer = Customer.new(customer_params)
    respond_to do |format|
      if @customer.save
        format.html { redirect_to customer_url(@customer), notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1 or /customers/1.json
  def update
    @customer = current_customer
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to customer_url(@customer), notice: "Customer was successfully updated." }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1 or /customers/1.json
  def destroy
    @customer = Customer.find_by(id: params[:id])
    if  @customer != current_customer
      flash[:alert] = "You can only delete your own profile."
      redirect_to customers_path
    else
      @customer.destroy
      redirect_to customers_path, notice: 'Customer deleted successfully'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:name, :contact_no, :address, :city, :shop_id, :email, :password, :password_confirmation)
    end
end
