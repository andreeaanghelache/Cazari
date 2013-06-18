class GuestController < ApplicationController

 def index
 #logger.info("current user=" + current_user.inspect)
   if current_user
     if current_user.is_student == "true"
       respond_to do |format|
                format.html { redirect_to '/profil_student' }
       end
     end
     if current_user.is_management == "true"
       respond_to do |format|
       		format.html { redirect_to '/lista_cereri'}
       end
     end
   else
     respond_to do |format|
          format.html # index.html.erb
     end
   end
 end

 def metodologie
   respond_to do |format|
    format.pdf  
   end
 end
end
