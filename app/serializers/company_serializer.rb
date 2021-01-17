class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :industry, :address, :poc_name, :poc_email, :poc_number, :users

  def users
    self.object.users.uniq
  end
end
