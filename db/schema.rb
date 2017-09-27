# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "jsonbeepdata", primary_key: "beepID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "beepSeq"
    t.string "FileName", limit: 500
    t.string "beepDuration", limit: 100
  end

  create_table "jsoncalldata", primary_key: "FileName", id: :string, limit: 500, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "FileId", limit: 200
    t.decimal "callDuration", precision: 6, scale: 2
    t.decimal "nonTalkTime", precision: 6, scale: 2
  end

  create_table "jsoncallworddata", primary_key: "wordID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Keyword", limit: 200, null: false
    t.string "FileName", limit: 500
    t.decimal "startTime", precision: 10, scale: 2
    t.decimal "endTime", precision: 10, scale: 2
    t.string "speakerType", limit: 50
    t.string "gender", limit: 50
    t.decimal "confidence", precision: 6, scale: 2
    t.decimal "score", precision: 6, scale: 2
    t.integer "wordSeq", null: false
  end

  create_table "metaagent", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "agentId", limit: 500, null: false
    t.string "firstName", limit: 500, null: false
    t.string "lastName", limit: 500
    t.string "teamId", limit: 500, null: false
    t.string "teamName", limit: 500, null: false
  end

  create_table "metacallstats", primary_key: "contactId", id: :string, limit: 500, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "ID", null: false
    t.string "abandoned", limit: 10
    t.integer "abandonSeconds"
    t.integer "ACWSeconds"
    t.string "agentId", limit: 500, null: false
    t.integer "agentSeconds"
    t.integer "callbackTime"
    t.string "campaignId", limit: 500
    t.integer "confSeconds"
    t.datetime "contactStart"
    t.datetime "dateACWWarehoused"
    t.datetime "dateContactWarehoused"
    t.string "dispositionNotes", limit: 500
    t.integer "holdCount"
    t.integer "holdSeconds"
    t.integer "NPSscore"
    t.integer "inQueueSeconds"
    t.string "isLogged", limit: 10
    t.string "isOutbound", limit: 10
    t.string "isRefused", limit: 10
    t.string "isShortAbandon", limit: 10
    t.string "isTakeover", limit: 10
    t.datetime "lastUpdateTime"
    t.integer "mediaType"
    t.string "pointOfContactId", limit: 500
    t.integer "postQueueSeconds"
    t.integer "preQueueSeconds"
    t.string "primaryDispositionId", limit: 500
    t.string "refuseReason", limit: 500
    t.datetime "refuseTime"
    t.integer "releaseSeconds"
    t.integer "routingTime"
    t.string "secondaryDispositionId", limit: 500
    t.integer "serviceLevelFlag"
    t.string "skillId", limit: 500
    t.integer "totalDurationSeconds"
    t.integer "transferIndicatorId"
  end

  create_table "metacampaign", primary_key: "campaignId", id: :string, limit: 500, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "campaignName", limit: 500
  end

  create_table "metaclient", primary_key: "contactId", id: :string, limit: 500, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "fromAddr", limit: 500
    t.string "toAddr", limit: 500
  end

  create_table "metacontactids", primary_key: "contactId", id: :string, limit: 500, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "masterContactId", limit: 500
  end

  create_table "metamediatype", primary_key: "mediaType", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "mediaTypeName", limit: 500
  end

  create_table "metapointofcontact", primary_key: "pointOfContactId", id: :string, limit: 500, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "pointOfContactName", limit: 500
  end

  create_table "metaskill", primary_key: "skillId", id: :string, limit: 500, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "skillName", limit: 500
  end

  create_table "metatransferindicator", primary_key: "transferIndicatorId", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "transferIndicatorName", limit: 500
  end

  create_table "sentifourgram", primary_key: "fourID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "FileName", limit: 500
    t.string "FourGram", limit: 500
    t.integer "FourGramScore"
  end

  create_table "sentiscore", primary_key: "FileName", id: :string, limit: 500, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "SentiScore"
  end

  create_table "sentitrigram", primary_key: "triID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "FileName", limit: 500
    t.string "TriGram", limit: 500
    t.integer "TriGramScore"
  end

end
