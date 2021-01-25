class JobApplication < ApplicationRecord
    belongs_to :open_job
    belongs_to :candidate 

    # validates :candidate, uniqueness: {scope: :open_job, message: "Only one job application per candidate can be opened per job."}
end
