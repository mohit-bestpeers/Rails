class SuppliersController < ApplicationController
    
   def show
        @supplier = Supplier.find_by(params[:supplier_id])
   end

   def index
    @supplier=Supplier.all
   end

  def new 
    @supplier=Supplier.new
  end

  def create
      @supplier=Supplier.new(supplier_params)
      if @supplier.save
        redirect_to @supplier
      else
        render :new, status: :unprocessable_entity
      end
   end
     
     private
     def supplier_params
        params.require(:supplier).permit(:name)
     end
end
