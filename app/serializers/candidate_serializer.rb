class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :name, :cell_phone, :home_phone, :date_of_birth, :address, :city, :state, :zipcode, :calls, :notes 

  def calls 
    self.object.candidate_calls 
  end

  def name 
    "#{self.object.first_name} #{self.object.last_name}"
  end
end
