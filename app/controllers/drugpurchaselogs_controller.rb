class DrugpurchaselogsController < ApplicationController
    def index 
        @drugpurchases = Drugpurchaselog.all 
    end

    def newsupply
        @drugs = Drug.all 
        @suppliers = Supplier.all 
    
    end


    def create
        all_props = purchase_params
        puts all_props
        purchase_params[:total_price] = purchase_params[:price_per_unit].to_i * purchase_params[:purchased_units].to_i
        puts purchase_params
        @purchase = Drugpurchaselog.create!(all_props)
        @tDrug = Drug.find(all_props[:drug_id])
        @tDrug.drugtracklogs.create!(drug_action: "purchase", former_stock: @tDrug.current_stock, drugpurchaselog_id: @purchase.id)
        @tDrug.update(current_stock: @tDrug.current_stock.to_i + all_props[:purchased_units].to_i)
        redirect_to "/drugs/show/#{all_props[:drug_id]}"
    end

    def show
        @drug = Drug.find(params[:id])
        @logs = Drugpurchaselog.where("drug_id = '#{params[:id]}'")
    end



    private
    def purchase_params
        params.permit(:order_no, :order_date, :drug_id, :supplier_id, :price_per_unit, :purchased_units, :total_price)
    end
end
