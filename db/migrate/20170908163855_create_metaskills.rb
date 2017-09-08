class CreateMetaskills < ActiveRecord::Migration[5.1]
  def change
    create_table :metaskills do |t|
      t.string :skillName
      t.string :–no-migration

      t.timestamps
    end
  end
end
