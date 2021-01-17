class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :industry, :address, :poc_name, :poc_email, :poc_number, :user_id
end
