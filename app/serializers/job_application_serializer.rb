class JobApplicationSerializer < ActiveModel::Serializer
  attributes :id, :candidate_id, :open_job_id, :red, :yellow, :green, :candidate, :user, :open_job, :company_id

  def candidate
    self.object.candidate.first_name + ' ' + self.object.candidate.last_name
  end

  def user
    self.object.open_job.user.first_name + ' ' + self.object.open_job.user.last_name
  end

  def open_job
    self.object.open_job.title 
  end

  def company_id 
    self.object.open_job.company.id
  end
end
