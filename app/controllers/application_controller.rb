class ApplicationController < ActionController::Base
  protect_from_forgery

  def login_required
    if !current_user
      respond_to do |format|
        format.html  {
          redirect_to '/auth/autentificare/'
        }
        format.json {
          render :json => { 'error' => 'Access Denied' }.to_json
        }
      end
    end
  end

  def current_user
    logger.info('SESSION=' + session[:user_id].to_s)
    return nil unless session[:user_id]
    @current_user ||= User.find_by_uid(session[:user_id]['uid'])
  end

end
