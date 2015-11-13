class LoginsController<ApplicationController
    def new
        
    end
    
    def create
        chef = Chef.find_by(email: params[:email])
        if chef && chef.authenticate(params[:password])
            session[:chef_id]=chef.id
            flash[:success]="Logged in Successfully "
            
            redirect_to recipes_path
        else
            
            flash.now[:danger]="Email/Password is not matching"
            render'new'
        end
    end
    
    def destroy
        session[:chef_id] = nil
        flash[:success]="Logged out"
        redirect_to root_path
    end
end
