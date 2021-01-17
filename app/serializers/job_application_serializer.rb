class JobApplicationSerializer < ActiveModel::Serializer
  attributes :id, :candidate_id, :open_job_id, :red, :yellow, :green, :candidate, :user

  def candidate
    self.object.candidate.first_name + ' ' + self.object.candidate.last_name
  end

  def user
    self.object.open_job.user.first_name + ' ' + self.object.open_job.user.last_name
  end
end
