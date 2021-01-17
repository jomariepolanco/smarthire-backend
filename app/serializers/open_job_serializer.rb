class OpenJobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :pay, :due_date, :user_id, :company_id, :poc

  def poc 
    return {
      name: self.object.company.poc_name,
      email: self.object.company.poc_email,
      phone_number: self.object.company.poc_number
    }
  end
end
