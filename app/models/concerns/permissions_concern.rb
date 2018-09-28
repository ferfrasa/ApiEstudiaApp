module PermissionsConcern
    extend ActiveSupport::Concern

    def is_normal_user?
        self.user_type_id = 1
    end

    def is_comerciante?
        self.user_type_id = 37
    end

    def is_jefe_col?
        self.user_type_id = 40
    end

    def is_aprendiz_u?
        self.user_type_id = 39
    end
    
    def is_profesor_u?
        self.user_type_id = 38
    end

    def is_admin?
        self.user_type_id = 1
    end
    
end