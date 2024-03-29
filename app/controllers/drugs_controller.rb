class DrugsController < ApplicationController
    protect_from_forgery with: :null_session

    def index 
        # Drug.find(42).destroy
        # puts "DEStroyyyyeeeddd"
        @drugs = Drug.includes(:drugpurchaselogs)
        # my_drugs = Drug.all
        # my_drugs = my_drugs.to_json(include: [:drugunit, :drugdistributionlogs, :drugpurchaselogs, :drugtracklogs])
        # @drug_purchases = my_drugs.drugpurchaselogs
        # @drugs = Drug.all
        # render json: @drugs
    end

    def show
        @drug = Drug.find(params[:id])
        @drug_logs = Drugtracklog.where(drug_id: params[:id])

    end

    def create 
        puts "Umefika"
        newhash = drugparams
        newhash[:in_stock] = 1
        newhash[:initial_stock] = newhash[:current_stock]
        # drugparams[:in_stock] = 0 unless drugparams[:current_stock].to_i > 0
        puts newhash
        # unless drugparams[:current_stock] > 0 drugparams[:in_stock] = 0 else drugparams[:in_stock] = 1 end
        new_drug = Drug.create!(newhash) 
        create_log(new_drug)
        
        # log.save

        # drugtrackparams[:drug_action] = "Initial"
        # drugtrackparams[:drug_id] = new_drug.id
        # new_log = Drugtracklog.create(drugtrackparams)
        # person.pets.build([{name: 'Spook'}, {name: 'Choo-Choo'}, {name: 'Brain'}])
        # new_drug.drugtracklogs.build drug_action: "Initial"
        # new_drug.to_json
        # my_drug = Drug.find(new_drug.id)
        # if my_drug.nil?
        #     "my_drug"
        # else
        #     drugtrackparams[:drug_action] = "Initial"
        # drugtrackparams[:drug_id] = my_drug.id
        # # drugtrackparams[:drugdistributionlog_id] = 0
        # # drugtrackparams[:drugpurchaselog_id	] = 0
        # new_drug_track = Drugtracklog.create!(drugtrackparams)
        # puts new_drug_track.id
        # end
        # drugtrackparams[:drug_action] = "Initial"
        # drugtrackparams[:drug_id] = new_drug.id
        # # drugtrackparams[:drugdistributionlog_id] = 0
        # # drugtrackparams[:drugpurchaselog_id	] = 0
        # new_drug_track = Drugtracklog.create!(drugtrackparams)
        # puts new_drug_track.id
        redirect_to action: "index"
        # redirect_to action: "show", id: new_drug.id
        
    end

    def create_log(new_drug)
        new_drug.drugtracklogs.create!(drug_action: "Initial", former_stock: new_drug.current_stock)
    end

    def newdrug
        @drug_units = Drugunit.all
    end

    private
    def drugparams
        params.permit(:name, :drugunit_id, :current_stock, :in_stock, :initial_stock)
    end

    # def drugtrackparams
    #     params.permit(:drug_id, :drug_action, :drugdistributionlog_id, :drugpurchaselog_id)
    # end
end
