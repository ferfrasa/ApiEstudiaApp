class UserFirebase < ApplicationRecord
    self.table_name = 'user_firebase'
    self.primary_key= "id_firebase"

    def self.us_region
        #UserFirebase.where(nombre_university: "Universidad de los Andes" )
    end
end