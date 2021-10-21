class DashboardController < ApplicationController
  def index
    # Last year total sales 
    @sales_grouped_by_month = Sale.group_by_month(:date_time, last: 12).order(date_time: :desc).sum(:amount)

    # Last year quantity sales
    @sales_quantity_grouped_by_month = Sale.group_by_month(:date_time, format:"%b %Y", last: 12).order(date_time: :desc).count

    # Last year average ticket sales
    @sales_average_grouped_by_month = Sale.group_by_month(:date_time, format:"%b %Y", last: 12).order(date_time: :desc).average(:amount)

    # Last year sales by origin 
    @sales_group_by_origin_last_year = Sale.last_year.group(:origin).count

    # Last six months sales by origin
    @sales_group_by_origin_half_year_ago = Sale.half_year_ago.group(:origin).count

    # Last three months sales by origin
    @sales_group_by_origin_last_trimester = Sale.last_trimester.group(:origin).count

    # Last month sales by origin
    @sales_group_by_origin_last_month = Sale.last_month.group(:origin).count

    # Last year sales by blend 
    @sales_group_by_blend_last_year = Sale.last_year.group(:blend_name).count
    
    # Last six months sales by blend
    @sales_group_by_blend_half_year_ago = Sale.half_year_ago.group(:blend_name).count

    # Last three months sales by blend
    @sales_group_by_blend_last_trimester = Sale.last_trimester.group(:blend_name).count

    # Last month sales by blend
    @sales_group_by_blend_last_month = Sale.last_month.group(:blend_name).count

  end
end
