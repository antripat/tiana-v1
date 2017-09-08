class CreateMetapointofcontacts < ActiveRecord::Migration[5.1]
  def change
    create_table :metapointofcontacts do |t|
      t.string :pointOfContactName
      t.string :–no-migration

      t.timestamps
    end
  end
end
