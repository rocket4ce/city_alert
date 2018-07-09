class CreateAlerts < ActiveRecord::Migration[5.1]
  def change
    create_table :alerts do |t|
      t.string :imagen
      t.string :latitude
      t.string :longitude
      t.string :address

      t.timestamps
    end
  end
end
