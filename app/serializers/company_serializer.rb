class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :industry, :address, :poc_name, :poc_email, :poc_number, :users, :calls

  def users
    self.object.users.uniq
  end

  def calls 
    self.object.client_calls
  end
end
