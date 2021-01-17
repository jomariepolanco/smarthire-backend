class ClientCallSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :notes, :user_id, :company_id, :company, :user

  def company
    self.object.company.name
  end

  def user
    self.object.user.first_name + ' ' + self.object.user.last_name
  end
end
