class SuppliersController < ApplicationController
    def index
        # @suppliers = Supplier.all 
    end

    def create
        @supplier = Supplier.create!(supplier_params)
    end



    private
    def supplier_params
        params.permit(:supplier_ref, :supplier_name, :contact, :paybill_number)
    end
end
