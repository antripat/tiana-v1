class CreateMetaagents < ActiveRecord::Migration[5.1]
  def change
    create_table :metaagents do |t|
      t.string :agentId
      t.string :firstName
      t.string :lastName
      t.string :teamId
      t.string :teamName
      t.string :–no-migration

      t.timestamps
    end
  end
end
