module Mutations
  class CreateArticle < BaseMutation
    argument :title, String, required: true
    argument :body, String, required: true

    field :article, Types::ArticleType, null: true
    field :errors, [String], null: false

    def resolve(title:, body:)
      article = Article.new(title: title, body: body)
      if article.save
        { article: article, errors: [] }
      else
        { article: nil, errors: article.errors.full_messages }
      end
    end
  end
end