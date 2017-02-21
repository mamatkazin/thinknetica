class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :body

      t.timestamps
    end

    add_index :questions, :title
  end
end
