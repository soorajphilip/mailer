class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :weekly_review, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.text :answer

      t.timestamps
    end
  end
end
