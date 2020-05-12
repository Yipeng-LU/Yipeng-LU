class YipengluController < ApplicationController
    http_basic_authenticate_with name:'yipenglu',password:'14159265',only:[:edit,:destroy]
    def index
        @datas=Yipeng.all
    end
    
    def new
        
    end
    
    def show
       @data=Yipeng.find(params[:id]) 
    end
    
    def create
        @data=Yipeng.new(params.require(:data).permit(:title,:body,:date,:username))
        if (@data.save)
            redirect_to yipenglu_path(@data.id)
        else
            render 'new'
        end
    end
    
    def edit
        @data=Yipeng.find(params[:id])
    end
    
    def update
        @data=Yipeng.find(params[:id])
        if (@data.update(params.require(:data).permit(:title,:body,:date,:username)))
            redirect_to yipenglu_path(@data.id)
        else
            render 'edit'
        end
    end
    
    def destroy
        @data=Yipeng.find(params[:id])
        @data.destroy
        redirect_to yipenglu_index_path
    end
    
    def other 
        
    end
    
    def search
        @search=params[:search]
        count=0
        if params[:w]
            @datas=Yipeng.where(username:@search)
            count+=1
        end
        if params[:t]
            @datas=Yipeng.where(title:@search)
            count+=1
        end
        if count==2
            @datas=Yipeng.all
            @msg='please do not check multiple boxes'
        elsif count==0
            @datas=Yipeng.all
            @msg='you have not checked any boxes'
        elsif @datas.length==0
            @datas=Yipeng.all
            @msg='could not find the post you are looking for'         
        end
        render 'index'
    end
end
