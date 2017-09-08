class CreateMetamediatypes < ActiveRecord::Migration[5.1]
  def change
    create_table :metamediatypes do |t|
      t.string :mediaTypeName
      t.string :–no-migration

      t.timestamps
    end
  end
end
