class Drugtracklog < ApplicationRecord
    belongs_to :drug
    belongs_to :drugdistributionlog, required: false
    belongs_to :drugpurchaselog, required: false
end
