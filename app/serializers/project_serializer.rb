class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :date, :user 

  def user
   return "#{self.object.user.first_name}  #{self.object.user.last_name}"
  end
end
