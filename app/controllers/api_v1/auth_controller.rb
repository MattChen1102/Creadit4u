class ApiV1::AuthController < ApiController
	before_action :authenticate_user!, :except => [:login]
 
   def login
     success = false
 
      if params[:email] && params[:password]
       user = User.find_by_email( params[:email] )
       success = user && user.valid_password?( params[:password] )
     end
 
     if success
       render :json => { :message => "Ok～～～～～～～～",
                         :auth_token => user.authentication_token,
                         :user_id => user.id,
                         :first_name => user.first_name,
                         :last_name => user.last_name,
                         :phone_number => user.phone_number
                       }
     else
       render :json => { :message => "Email or Password is wrong" }, :status => 401
     end
   end
 
   def logout
     current_user.generate_authentication_token
     current_user.save!
 
     render :json => { :message => "logout Ok"}
   end
 end

end