class Drugdistributionlog < ApplicationRecord
    belongs_to :drug
    belongs_to :department
    has_many :drugtracklogs
end
