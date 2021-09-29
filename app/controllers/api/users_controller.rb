class Api::UsersController < Api::BaseController

    before_action :find_user, only: %w[show]

    def index
      puts 'PARAMS AREEEEEE PARAMS AREEEE PARAMS AREEEEE'
      puts params
      if params[:query]
        @users = User.search(params[:query]).order("created_at DESC")
      else
        @users = User.all.order('created_at DESC')
      end
      render json: @users
    end
  
    def show
      render_jsonapi_response(@user)
    end
  
    private
  
    def find_user
      @user = User.find(params[:id])
    end
  
  end