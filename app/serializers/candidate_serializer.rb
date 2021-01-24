class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :name, :cell_phone, :home_phone, :date_of_birth, :address, :city, :state, :zipcode, :notes, :applications 

  has_many :calls

  def calls 
    self.object.candidate_calls 
  end

  def name 
    "#{self.object.first_name} #{self.object.last_name}"
  end

  def applications
    return self.object.job_applications.map do |app|
       {
        candidate_id: app.candidate_id,
        green: app.green,
        yellow: app.yellow,
        red: app.red,
        open_job: app.open_job.title
      }
    end
  end
end
