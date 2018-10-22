class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :user, foreign_key: true
      t.text :content
      t.date :visible_from
      t.date :visible_until
      t.boolean :reported

      t.timestamps
    end
  end
end
