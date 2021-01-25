class TaskSerializer < ActiveModel::Serializer
  attributes :id, :archived, :project_id, :content
  # :user, :project

  belongs_to :project

  # def user
  #   self.object.project.user.first_name + ' ' + self.object.project.user.last_name
  # end

  # def project
  #   self.object.project.title
  # end
end
