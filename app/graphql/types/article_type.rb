# frozen_string_literal: true

module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :body, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :photo_url, String, null:true 

    def photo_url 
      if object.photo.attached?
        Rails.application.routes.url_helpers.polymorphic_url(object.photo, only_path: true)
      end
    rescue
      nil
    end
  end
end
