class DrugdistributionlogsController < ApplicationController
    
    def index 
    end

    def distribute(validity=true)
        puts validity
        @drug_id = params[:id]
        @departments = Department.all
        @drug = Drug.find(params[:id])
        @message = "You do not have enough stock" unless validity == true
        # @distributionlog = Drugdistributionlog
    end

    def create
        drug = Drug.find(params[:drug_id])
        remaining_units = params[:current_units].to_i - params[:removed_units].to_i
        params[:remaining_units] = remaining_units

        new_log = Drugdistributionlog.create(logparams)
        Drugtracklog.create(drug_id: params[:drug_id],former_stock:drug.current_stock, drug_action: "distribution", drugdistributionlog_id: new_log.id)
        
        drug.update(current_stock: remaining_units)
        # new_log.drugtracklogs.create(drug_action: "distribution", drug_id:params[:drug_id])
        
        redirect_to '/drugs'
        

    end

    private
    def logparams
        params.permit(:drug_id, :removed_units, :department_id, :remaining_units)
    end

    def trackparams
        params.permit(:drug_id, :drug_action, :drugdistributionlog_id, :drugpurchaselog_id)
    end
end
