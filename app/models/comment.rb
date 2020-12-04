class Comment < ApplicationRecord
  validate :body, length: {maximum: 4000}

  belongs_to :article
end
