class ProjectPar < ApplicationRecord
    self.table_name = 'project_par'
    self.primary_key= "id"

    def self.us_region
        #UserFirebase.where(nombre_university: "Universidad de los Andes" )
    end
end
