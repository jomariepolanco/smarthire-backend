class User < ApplicationRecord
    has_many :projects
    has_many :candidate_calls 
    has_many :candidates, through: :candidate_calls
end
