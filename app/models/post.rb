class Post < ApplicationRecord
  include PgSearch::Model
  extend FriendlyId
  validates :title, :author, :body, presence: true

  has_many :commments

  friendly_id :title, use: :slugged

  pg_search_scope :search,
                  agaist: %i[litle author body],
                  associated_agaist: { commments: %i[body] }
end
