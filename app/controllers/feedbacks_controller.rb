class FeedbacksController < ApplicationController
    def create
        @users = User.find(params[:users_id])
        @feedback = @users.feedbacks.create(feedback_params)
        redirect_to user_path(@users)
    end
    
    private 
        def feedback_params
            params.require(:feedback).permit(:commenter, :body) 
        end
end
