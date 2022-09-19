class Drugpurchaselog < ApplicationRecord
    belongs_to :drug
    has_many :drugtracklogs
end
