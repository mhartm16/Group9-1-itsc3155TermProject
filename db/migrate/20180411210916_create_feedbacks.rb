class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.string :commenter
      t.text :body
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
