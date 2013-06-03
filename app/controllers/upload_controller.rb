class UploadController < ApplicationController
  
  def handler
    render :text => '{"success": true}'
  end

end
