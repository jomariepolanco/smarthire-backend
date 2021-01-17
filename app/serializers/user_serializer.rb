class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :tasks, :calls

  def tasks 
    self.object.projects.each do |pro|
      pro.tasks
    end
  end

  def calls
    self.object.candidate_calls
  end

end
