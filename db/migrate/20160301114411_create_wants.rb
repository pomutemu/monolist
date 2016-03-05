class CreateWants < ActiveRecord::Migration
  def change
    create_table :wants do |t|
      t.references :user, index: true
      t.references :item, index: true
      t.string :type

      t.timestamps null: false

      t.index [:user_id, :item_id , :type], unique: true
    end
  end
end
