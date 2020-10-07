class CreateProps < ActiveRecord::Migration[6.0]
  def change
    create_table :props do |t|
      t.string :content
      t.integer :stars
      t.belongs_to :user, null: true, foreign_key: false

      t.timestamps
    end
  end
end
