class DistanceLogsController < ApplicationController

  def new
    @distance_log = DistanceLog.new(start_time: params[:start_time])
  end

  def index
    @distance_logs = user_distance_logs
  end

  def create
    @distance_log = current_user.distance_logs.build(run_params)
    if @distance_log.save
      flash[:success] =  "ランニングを記録しました"
      redirect_to distance_logs_path(@distance_log)
    else
      render :new
    end
  end

  def destroy
    @distance_log = DistanceLog.find(params[:id])
    @distance_log.destroy
    flash[:success] =  "ランニング記録を削除しました"
    redirect_to distance_logs_path
  end

  private

  def user_distance_logs
    current_user.distance_logs
  end

  def run_params
    params.require(:distance_log).permit(:distance, :start_time)
  end
end
