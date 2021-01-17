class JobApplicationSerializer < ActiveModel::Serializer
  attributes :id, :candidate_id, :open_job_id, :red, :yellow, :green
end
