class RenameArticleTagsTable < ActiveRecord::Migration
      def self.up
      rename_table :articles_tags, :article_tags
    end
    def self.down
      rename_table :article_tags, :articles_tags
    end
end
