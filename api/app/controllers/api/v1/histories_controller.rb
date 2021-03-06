class Api::V1::HistoriesController < ApplicationController
    def index
        histories = History.all
        @all_history_count = histories.count
        @histories = histories
        render json: { status: 'SUCCESS', all_history_count:@all_history_count , histories: @histories }
    end

    def show
        history = History.find(params[:id])
        @history = history
        render json: { status: 'SUCCESS', history: @history }
    end

    def show_user
        histories = History.where({user_id:params[:user_id]})
        @history_count = histories.count
        @histories = histories
        render json: { status: 'SUCCESS', history_count:@history_count , histories: @histories }
    end

    def create
        history = History.create({user_id: params[:user_id], genre_id: params[:genre_id], price: params[:price], sign: params[:sign], detail: params[:detail]})
        render json: { status: 'SUCCESS'}
    end

    def update
        history = History.find(params[:id])
        history.genre_id = params[:genre_id]
        history.price = params[:price]
        history.sign = params[:sign]
        history.detail = params[:detail]
        history.save
        render json: { status: 'SUCCESS'}
    end

    def destroy
        History.find(params[:id]).destroy
        render json: { status: 'SUCCESS'}
    end
  end