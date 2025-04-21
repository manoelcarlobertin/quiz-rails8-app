class Quiz < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :quiz_attempts, dependent: :destroy
  # belongs_to :user

  validates :titulo, presence: true
  validates :descricao, presence: true
  # validates :status, inclusion: { in: %w[draft published archived] }

  # scope :published, -> { where(status: "published") }
  # scope :by_user, ->(user) { where(user: user) }

  def total_questions
    questions.count
  end

  def available?
    status == "published"
  end
end
