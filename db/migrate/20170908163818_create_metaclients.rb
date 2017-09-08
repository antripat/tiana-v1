class CreateMetaclients < ActiveRecord::Migration[5.1]
  def change
    create_table :metaclients do |t|
      t.string :fromAddr
      t.string :toAddr
      t.string :–no-migration

      t.timestamps
    end
  end
end
