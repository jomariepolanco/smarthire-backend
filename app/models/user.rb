class User < ApplicationRecord
    has_many :projects
    has_many :candidate_calls 
    has_many :client_calls
    has_many :open_jobs
    has_many :job_applications
    has_many :candidates, through: :candidate_calls
    has_many :companies, through: :open_jobs

    has_secure_password
end
