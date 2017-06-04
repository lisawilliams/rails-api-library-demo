class AddAuthorToBooks < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :author, index: true, foreign_key: true
  end
end
