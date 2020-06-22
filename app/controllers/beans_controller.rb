class BeansController < ApplicationController
    def index
        # TODO beanを全て取ってくる
        # TODO 取ってきたbeanごとにループして紐づくcafe_listを取得
        # TODO cafe_listをbeanごとのハッシュに入れてviewに渡す
        # @array = [(cafe_list1), (cafe_list2)]
        # @cafe_lists = ['brazil': @array, 'epiopia': "etdfasdfadext"]
        @beans = Beantag.all
        
        @cafe_lists = {}
        
        @beans.each do |bean|
            @tmp_cafe_lists = bean.cafe_lists
            @cafe_lists[bean.name.to_sym] = @tmp_cafe_lists
        end
        
        
        
        # @tmp_cafe_lists = Beantag.find(2).cafe_lists
        # @cafe_lists[:brazil] = @tmp_cafe_lists
        
        # @tmp_cafe_lists = Beantag.find(3).cafe_lists
        # @cafe_lists[:ethopia] = @tmp_cafe_lists
        
        # @tmp_cafe_lists = Beantag.find(4).cafe_lists
        # @cafe_lists[:kenya] = @tmp_cafe_lists
        
        # @tmp_cafe_lists = Beantag.find(:id).cafe_lists
        # @cafe_lists[:id.name] = @tmp_cafe_lists
                
    end
end
