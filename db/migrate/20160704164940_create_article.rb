class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string :title
    	t.string :description
    	t.timestamps
    end
  end
end
