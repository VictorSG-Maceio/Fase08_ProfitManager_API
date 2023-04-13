class Api::V2::GainSerializer < ActiveModel::Serializer
  attributes :id, :description, :value, :date, :user_id, :created_at, :updated_at
  belongs_to :user
end
