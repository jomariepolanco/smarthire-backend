class OpenJobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :pay, :due_date, :user_id, :company_id, :poc, :job_applications

  def poc 
    return {
      name: self.object.company.poc_name,
      email: self.object.company.poc_email,
      phone_number: self.object.company.poc_number
    }
  end

  def job_applications
    return self.object.job_applications.map do |app|
      {
        id: app.id,
        candidate: app.candidate.first_name + ' ' + app.candidate.last_name,
        candidate_id: app.candidate_id,
        open_job_id: app.open_job_id,
        red: app.red,
        yellow: app.yellow,
        green: app.green 
      }
    end
  end
end
