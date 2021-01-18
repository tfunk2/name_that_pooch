class CreateGuessCards < ActiveRecord::Migration[6.0]
  def change
    create_table :guess_cards do |t|
      t.text :name
      t.text :email
      t.text :breed_one
      t.text :breed_two
      t.text :breed_three
      t.text :breed_four
      t.text :breed_five

      t.timestamps
    end
  end
end
