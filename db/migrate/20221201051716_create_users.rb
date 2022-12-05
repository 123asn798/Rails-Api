class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.text :address
      t.integer :phone
      t.string :email
      

      t.timestamps
    end
  end
end
