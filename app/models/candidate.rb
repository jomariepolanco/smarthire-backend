class Candidate < ApplicationRecord
    has_many :candidate_calls
    has_many :job_applications
    has_many :users, through: :candidate_calls
    has_many :open_jobs, through: :job_applications 

    validates :first_name, uniqueness: {scope: :last_name, message: "Duplicate candidates cannot be made"}
end
