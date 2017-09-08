class CreateMetacontactids < ActiveRecord::Migration[5.1]
  def change
    create_table :metacontactids do |t|
      t.string :masterContactId
      t.string :–no-migration

      t.timestamps
    end
  end
end
