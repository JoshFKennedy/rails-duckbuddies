class CreateDucks < ActiveRecord::Migration[6.1]
  def change
    create_table :ducks do |t|
      t.string :name
      t.text :description
      t.integer :age
      t.string :nationality
      t.string :photo

      t.timestamps
    end
  end
end
