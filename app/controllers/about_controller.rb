class AboutController < ApplicationController
    def index
        @inquiry = Inquiry.new
    end
end
