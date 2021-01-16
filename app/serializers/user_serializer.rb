class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :tasks

  def tasks 
    self.object.projects.map do |pro|
      pro.tasks
    end
  end

end
