class HomeController < ApplicationController
    
    def index
        # @cafe_lists = CafeList.order('id DESC').limit(3)
        # @cafe_lists = CafeList.order('id DESC').first(3)
        @cafe_lists = CafeList.last(3)
        @cafe_lists_carousel = CafeList.all.sample(3)
    end
    
end
