class AddCoursesToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :course, null: false, foreign_key: true
  end
end
