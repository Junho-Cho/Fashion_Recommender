class RatesController < ApplicationController
    skip_before_filter :verify_authenticity_token  
    def rate_toggle
        rate = Rate.find_by(user_id: current_user.id, stylejg_id: params[:stylejg_id])
        
        if rate.nil?
            Rate.create(user_id: current_user.id, stylejg_id: params[:stylejg_id])
        else
            rate.destroy
        end
        
        redirect_to :back
    end
end
