class GuestController < ApplicationController

 def index
 logger.info("current user=" + current_user.to_s)
   if current_user
     if current_user.is_student == "true"
       respond_to do |format|
                format.html { redirect_to '/profil_student' }
     end
     end
   else
     respond_to do |format|
          format.html # index.html.erb
     end
   end
 end

end
