class Perguntum < ApplicationRecord
  belongs_to :quiz

  validates :question_type, presence: true
  validates :content, presence: true

  enum question_type: {
    multiple_choice: 0,
    true_false: 1
  }

  has_many :alternatives, dependent: :destroy
  accepts_nested_attributes_for :alternatives, allow_destroy: true
end
