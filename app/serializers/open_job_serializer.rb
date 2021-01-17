class OpenJobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :pay, :due_date, :point_of_contact, :user_id, :company_id
end
