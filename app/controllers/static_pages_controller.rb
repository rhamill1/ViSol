require 'date'
require 'json'

class StaticPagesController < ApplicationController
  def home
  end

  def login
  end

  def dash

     @month_chart = LazyHighCharts::HighChart.new('graph') do |f|
       f.title(text: "Energy Generation (kWh)")

       f.xAxis(categories: ["4/1/17", "4/8/17", "4/15/17", "4/22/17"])
       f.series(name: "Chris' Home", yAxis: 0, data: [196, 175, 207, 218])


       f.yAxis [
         {title: {text: "Weekly", margin: 70} },
       ]

       f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
       f.colors(["#e5a267", "#d27254", "#a5494d", "#63223c"])
       f.chart({defaultSeriesType: "area"})
     end

  end

  def battery
     @battery_chart_1 = LazyHighCharts::HighChart.new('graph') do |f|
       f.title(text: "YTY Savings")

       f.xAxis(categories: ["1", "2", "3", "4", "5","6","7","8","9","10"])
       f.series(name: "Purchase Option", yAxis: 0, data: [2000, 4000, 6000, 8000, 10000 , 12000, 14000, 16000, 18000, 20000])
       f.series(name: "Lease Option", yAxis: 0, data: [600, 1200, 1800, 2400, 3000, 3600, 4200, 4800, 5400, 6000])

       # f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
       f.colors([ "#29b6f6", "#e5a267", "#a5494d", "#63223c"])
       f.chart({defaultSeriesType: "area"})
     end
  end
end
