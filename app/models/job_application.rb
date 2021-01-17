class JobApplication < ApplicationRecord
    belongs_to :open_job
    belongs_to :candidate 
end
