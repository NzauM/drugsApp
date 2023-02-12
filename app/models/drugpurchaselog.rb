class Drugpurchaselog < ApplicationRecord
    belongs_to :drug
    has_many :drugtracklogs
    belongs_to :supplier
end
