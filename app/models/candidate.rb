class Candidate < ApplicationRecord
    has_many :candidate_calls
    has_many :users, through: :candidate_calls 
end
