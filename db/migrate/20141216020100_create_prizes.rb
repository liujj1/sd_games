class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.integer :user_id
      t.integer :leve
      t.integer :code

      t.timestamps
    end
  end
end
