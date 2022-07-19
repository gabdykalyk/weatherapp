Rails.application.routes.draw do
  root 'weather#current'
  get 'weather/historical'
  get 'weather/max'
  get 'weather/min'
  get 'weather/avg'
  get 'weather/by_time'
  get 'weather/404'
end
