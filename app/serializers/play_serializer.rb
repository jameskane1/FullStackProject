class PlaySerializer < ActiveModel::Serializer
  attributes :id, :team, :yard_line, :play_type, :yards_gained, :play_result, :user_id
end
