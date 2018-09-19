class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  

  private
  def to_upper #poner campos en mayuscula  metodo para todas las clases que lo llamen
    attributes.keys.each do |attribute|
      self[attribute].try(:upcase!)
    end
  end
  
  
end
