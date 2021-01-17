class ClientCallSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :notes, :user_id, :company_id, :company, :user

  def company
    self.object.company.name
  end

  def user
    self.object.user.firstName + ' ' + self.object.user.lastName
  end
end
