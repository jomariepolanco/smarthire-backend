class CandidateCallSerializer < ActiveModel::Serializer
  attributes :id, :date, :notes, :user_id, :candidate_id, :user, :candidate

  def user 
    self.object.user.first_name + ' ' + self.object.user.last_name
  end

  def candidate
    self.object.candidate.first_name + ' ' + self.object.candidate.last_name
  end
end
