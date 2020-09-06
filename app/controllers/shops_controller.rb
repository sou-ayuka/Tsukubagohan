class ShopsController < ApplicationController
    before_action :authenticate_user!
    def index
        @shops = Shop.all
        if params[:search] == nil
            @shops= Shop.all
          elsif params[:search] == ''
            @shops= Shop.all
          else
            
            @shops = Shop.where("body LIKE ? ",'%' + params[:search] + '%')
          end
    end    
    def new
        @shop = Shop.new
    end
    def create
        @shop = Shop.new(shop_params)
        @shop.user_id = current_user.id
        if @shop.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end
    
    
    
    def show
        @shop = Shop.find(params[:id])
        @like = Like.new
        @comments = @shop.comments
        @comment = @shop.comments.build
    end
    def edit
      @shop = Shop.find(params[:id])
    end
    def update
      @shop = Shop.find(params[:id])
      if @shop.update(shop_params)
        redirect_to :action => "show", :id => @shop.id
      else
        redirect_to :action => "new"
      end
    end
    def destroy
        Shop.find(params[:id]).destroy
        redirect_to action: :index
    end  
    
    private
      def shop_params
        params.require(:shop).permit(:name,:place,:money,:genre,:body,:image)
    end   
end
