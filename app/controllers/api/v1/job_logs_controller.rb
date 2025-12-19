class Api::V1::JobLogsController < ApplicationController
  def index
    render json: JobLog.order(created_at: :desc)
  end

  def create
    job = JobLog.new(job_log_params)
    if job.save
      render json: job, status: :created
    else
      render json: job.errors, status: :unprocessable_entity
    end
  end

  private

  def job_log_params
    params.require(:job_log).permit(:name, :status, :run_time)
  end
end
