class Company < ApplicationRecord
    has_many :open_jobs
    has_many :users, through: :open_jobs
    has_many :client_calls
end
