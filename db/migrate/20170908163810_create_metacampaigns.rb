class CreateMetacampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :metacampaigns do |t|
      t.string :campaignName
      t.string :–no-migration

      t.timestamps
    end
  end
end
