class ApiV1::AuthController < ApiController
	before_action :authenticate_user!, :except => [:login]
  
  def login
    success = false
 
    if params[:email] && params[:password]
       user = User.find_by_email( params[:email] )
       success = user && user.valid_password?( params[:password] )
    end
 
    if success
      render :json => { :message => "阿明你成功囉～",
                        :auth_token => user.authentication_token,
                        :user_id => user.id,
                        :first_name => user.first_name,
                        :last_name => user.last_name,
                        :phone_number => user.phone_number
                        :photo => "https://firebasestorage.googleapis.com/v0/b/ios1-ec05d.appspot.com/o/%E6%98%93%E4%BA%9E%E5%A9%B7.png?alt=media&token=8e7b6244-45e1-41d2-ba15-7b9232f5c2a6"
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
