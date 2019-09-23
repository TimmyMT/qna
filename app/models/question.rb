class Question < ApplicationRecord
  include Ratingable

  has_many :answers, dependent: :destroy
  has_many :links, dependent: :destroy, as: :linkable, inverse_of: :linkable
  belongs_to :user

  has_one :achievement, dependent: :nullify

  has_many_attached :files, dependent: :destroy

  accepts_nested_attributes_for :links, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :achievement, reject_if: :all_blank

  validates :title, :body, presence: true

end
