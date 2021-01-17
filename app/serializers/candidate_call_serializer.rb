class CandidateCallSerializer < ActiveModel::Serializer
  attributes :id, :date, :notes, :user_id, :candidate_id
end
