module GamesHelper
  #хелпер для подставления картинки во вьюху
  def show_choice(choice)
    link= ""
    case choice
      when 0
        link = "stone.png"
      when 1
        link = "scissors.png"
      when 2
        link = "paper.png"
    end
    link
  end

  #хелпер для изменения оффсета для выравнивания на странице
  def define_offset(winner)
    if winner == "draw"
      offset = 4
    else
      offset = 3
    end
    offset
  end
end