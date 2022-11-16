class StoreController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @items = StoreInventory.all
    end

    def purchase_made
    end

    def add_item
        puts "Parametros"
        puts params
        puts params[:name_article]
        @item = StoreInventory.new
        @item.item = params[:name_article]
        @item.existences = params[:existences_article].to_i
        @item.price = params[:price_article].to_f
        @item.save
        json_data = {
            'status' => '200'
        }.to_json
        respond_to do |format|
            format.json { render :json => json_data }
        end
    end

    def delete_item
        puts "Parametros"
        puts params
        puts params[:id]
        @item = StoreInventory.find(params[:id].to_i)
        @item.destroy
        json_data = {
            'status' => '200'
        }.to_json
        respond_to do |format|
            format.json { render :json => json_data }
        end
    end

    def visualize_inventory
        @items = StoreInventory.all
    end

    def chartjs
        @items = StoreInventory.all
    end
end