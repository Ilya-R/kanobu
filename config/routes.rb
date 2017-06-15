Rails.application.routes.draw do
  #Главная страница
  root 'games#show'

  #Конец игры
  put 'complete' => 'games#complete'

end
