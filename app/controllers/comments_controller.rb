class CommentsController < ApplicationController
   
  def create
    #byebug
    @demo = Demo.find(params[:demo_id])
    @comment = @demo.comments.create(params.require(:comment).permit(:name,:body))
    redirect_to demos_path
    end
    


    def destroy
      @demo = Demo.find(params[:demo_id])
      @comment = @demo.comments.find(params[:id])
      @comment.destroy
      redirect_to demos_path
    end

  end  