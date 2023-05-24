class AccountsController < ApplicationController
   def show
        @account = Account.find_by(params[:id])
   end

   def index
    @account=Account.all
   end

  def new 
    @account=Account.new
  end

  def create
      @account=Account.new(account_params)
      if @account.save
        redirect_to @account
      else
        render :new, status: :unprocessable_entity
      end
   end
     
     private
     def account_params
        params.require(:account).permit(:accountnumber)
     end
end
