class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :cell_phone, :home_phone, :date_of_birth, :address, :city, :state, :zipcode
end
