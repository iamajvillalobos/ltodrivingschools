class SchoolsController < ApplicationController
  def index
    @q = School.ransack(params[:q])
    @schools = @q.result.order(province: :asc)
  end
end
