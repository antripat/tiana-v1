class CreateMetacallstats < ActiveRecord::Migration[5.1]
  def change
    create_table :metacallstats do |t|
      t.integer :ID
      t.string :abandoned
      t.integer :abandonSeconds
      t.integer :ACWSeconds
      t.string :agentId
      t.integer :agentSeconds
      t.integer :callbackTime
      t.string :campaignId
      t.integer :confSeconds
      t.datetime :contactStart
      t.datetime :dateACWWarehoused
      t.datetime :dateContactWarehoused
      t.string :dispositionNotes
      t.integer :holdCount
      t.integer :holdSeconds
      t.integer :NPSscore
      t.integer :inQueueSeconds
      t.string :isLogged
      t.string :isOutbound
      t.string :isRefused
      t.string :isShortAbandon
      t.string :isTakeover
      t.datetime :lastUpdateTime
      t.integer :mediaType
      t.string :pointOfContactId
      t.integer :postQueueSeconds
      t.integer :preQueueSeconds
      t.string :primaryDispositionId
      t.string :refuseReason
      t.datetime :refuseTime
      t.integer :releaseSeconds
      t.integer :routingTime
      t.string :secondaryDispositionId
      t.integer :serviceLevelFlag
      t.string :skillId
      t.integer :totalDurationSeconds
      t.integer :transferIndicatorId
      t.string :–no-migration

      t.timestamps
    end
  end
end
