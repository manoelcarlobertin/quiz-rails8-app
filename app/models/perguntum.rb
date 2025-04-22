class Perguntum < ApplicationRecord
  belongs_to :quiz

  validates :question_type, presence: true
  validates :content, presence: true

  has_many has_many: respostums, dependent: :destroy
  accepts_nested_attributes_for :respostums, allow_destroy: true
end
