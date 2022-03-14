# frozen_string_literal: true

class Item < ApplicationRecord
    validates :day, presence: true
  
    # after_initialize { p 'initialize' } #Item.new
    # after_save { p 'save' } #Item.create Item.save
    # after_create { p 'create' }
    # after_update { p 'update' }
    # after_destroy { p 'destroy' }
  end
  