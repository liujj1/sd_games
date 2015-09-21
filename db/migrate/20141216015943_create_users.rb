class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :tel
      t.integer :number, :default => 3

      t.timestamps
    end
  end
end
