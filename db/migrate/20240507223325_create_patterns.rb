# frozen_string_literal: true

# Create table for Pattern model
class CreatePatterns < ActiveRecord::Migration[7.1]
  def change
    create_table :patterns, comment: 'Dream patterns (common)' do |t|
      t.uuid :uuid, null: false, index: { unique: true }
      t.string :name, null: false
      t.string :summary, null: false, default: '', comment: 'Summary of interpretation in a couple of sentences'
      t.text :description, null: false, comment: 'Detailed description of interpretation'
      t.timestamps
    end

    add_index :patterns, 'lower(name)', unique: true
  end
end
