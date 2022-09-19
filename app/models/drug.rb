class Drug < ApplicationRecord
    belongs_to :drugunit
    has_many :drugpurchaselogs
    has_many :drugdistributionlogs
    has_many :drugtracklogs
end
