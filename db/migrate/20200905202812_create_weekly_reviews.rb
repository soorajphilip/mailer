class CreateWeeklyReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :weekly_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
