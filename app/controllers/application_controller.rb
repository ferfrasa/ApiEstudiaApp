class ApplicationController < ActionController::API
    include Knock::Authenticable

        protected
        #def authenticate_user! #ya est acon devise
         # redirect_to_root_path unless user_signed_in? && current_user.is_normal_user?
        #end
          
        def authenticate_admin!
           current_user.is_admin? 
        end

        def authenticate_comerciante!
            current_user.is_comerciante? 
        end

        def authenticate_estudiante!
            current_user.is_aprendiz_u? 
        end
      
        def authenticate_profesor!
           current_user.is_profesor_u?
        end

        def authenticate_liderC!
            current_user.is_jefe_col?
        end

        def update_status_activity
            
            Activity.where("fecha_activity < ? AND  status_activity_id != ? AND status_activity_id != ? ", DateTime.now ,5,34).update_all(status_activity_id: 7)

        end     
   
end

