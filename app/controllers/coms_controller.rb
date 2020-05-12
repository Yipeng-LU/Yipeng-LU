class ComsController < ApplicationController
    http_basic_authenticate_with name:'yipenglu',password:'14159265',only:[:destroy]
    def create
        @data=Yipeng.find(params[:yipenglu_id])
        @com=@data.coms
        @comment=@com.new(params.require(:com).permit(:user,:body,:date))
        @comment.save
        redirect_to yipenglu_path(@data.id)
    end
    def destroy
        @data=Yipeng.find(params[:yipenglu_id])
        @comment=@data.coms.find(params[:id])
        @comment.destroy
        redirect_to yipenglu_path(@data.id)
    end
end
