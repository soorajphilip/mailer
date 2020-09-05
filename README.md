Admin
-
Employees
users:
- string:name

tables:


user has_many weekly_reviews

weekly_review has_many questions
weekly_review has_many answers

weekly_review:
- references:user_id   @w = WeeklyReview.new(user_id: 1, date: 30/08/2020)
                       @review = WeeklyReview.find_by(user_id: 1)
                       @review.questions
                       @review.answers

- datetype:date

questions:
- string:question

answers:
- integer:weekly_review_id
- bigint:question_id
- text:answer
