class HomeController < ApplicationController
    
    def index
        # @cafe_lists = CafeList.order('id DESC').limit(3)
        # @cafe_lists = CafeList.order('id DESC').first(3)
        @cafe_lists_card = CafeList.all.sample(3)
        
        params[:title].blank? ? params[:title]="" : params[:title]
        params[:bean].blank? ? params[:bean]="" : params[:bean]
        params[:location].blank? ? params[:location]="" : params[:location]
        
        @cafe_lists = CafeList.where("title LIKE ? OR bean LIKE ? OR location LIKE ?", "%" + params[:title] + "%", "%" + params[:bean] + "%", "%" + params[:location] + "%")
    end
    
    
end
