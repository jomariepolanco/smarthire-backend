class OpenJob < ApplicationRecord
    belongs_to :company 
    belongs_to :user
    has_many :job_applications
    has_many :candidates, through: :job_applications
end
