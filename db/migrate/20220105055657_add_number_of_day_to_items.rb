# frozen_string_literal: true

class AddNumberOfDayToItems < ActiveRecord::Migration[6.1]
    def change
      add_column :items, :number, :integer
    end
end
