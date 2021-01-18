class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :industry, :address, :poc_name, :poc_email, :poc_number, :users, :calls, :notes, :jobs

  def users
    self.object.users.uniq
  end

  def calls 
    self.object.client_calls
  end

  def jobs 
    return self.object.open_jobs.map do |job|
      {
        id: job.id,
        title: job.title,
        description: job.description,
        pay: job.pay,
        due_date: job.due_date,
        user: job.user.first_name + ' ' + job.user.last_name,
        company_id: job.company_id,
        company: job.company.name,
        job_applications: job.job_applications
      }
    end
  end
end
