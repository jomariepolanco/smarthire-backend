class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :name, :email, :tasks, :candidate_calls, :client_calls

  def tasks 
    self.object.projects.each do |pro|
      pro.tasks
    end
  end

  def candidate_calls
    self.object.candidate_calls
  end

  def client_calls
    self.object.client_calls
  end

  def name 
    "#{self.object.first_name} #{self.object.last_name}"
  end
end
