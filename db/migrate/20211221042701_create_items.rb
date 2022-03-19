# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[6.1]
    def change
      create_table :items do |t|
        t.string :day
        t.string :st1
        t.string :st2
        t.string :st3
        t.string :st4
        t.string :st5
        t.string :st6
        t.timestamps
      end
  
      add_index :items, :day
    end
  end