# frozen_string_literal: true

module Types
  class ConfigurationType < Types::BaseObject
    field :name, String
    field :bio, String
    field :profile_picture, String
  end
end
