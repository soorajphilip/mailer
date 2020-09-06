class Answer < ApplicationRecord
  belongs_to :weekly_review
  belongs_to :question
end
