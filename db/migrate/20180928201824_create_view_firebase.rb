class CreateViewFirebase < ActiveRecord::Migration[5.1]
 
    def up
      self.connection.execute %Q( CREATE OR REPLACE VIEW user_firebase AS
        select u.id as user_id, u.id_firebase from users u ;
            )
    end
    
      def down
        self.connection.execute "DROP VIEW IF EXISTS user_firebase;"
      end
  end