class GamesController < ApplicationController
  #главная страница
  def show
  end

  #основная логика игры
  def complete
    #вычисляем победителя с помощью метода
      @result_hash = define_winner((params[:game]).to_i)

      #определяем переменные для передачи во вьюху
      @winner = @result_hash[:winner]
      @machin_choice = @result_hash[:machin]
      @man_choice = (params[:game]).to_i

  end

  private

  def define_winner(man_choice)
    # Цифровые значения для логики метода 0 - Stone, 1 - Scissors, 2 - Paper"

    # Случайное значение, выбор компьютера
    machin = rand(3)

    winner = ""

    #определяем победителя
    if man_choice == machin
      winner = "draw"
    elsif man_choice == 0 && machin == 1
      winner = "man"
    elsif man_choice == 0 && machin == 2
      winner = "machin"
    elsif man_choice == 1 && machin == 0
      winner = "machin"
    elsif man_choice == 1 && machin == 2
      winner = "man"
    elsif man_choice == 2 && machin == 0
      winner = "man"
    elsif man_choice == 2 && machin == 1
      winner = "machin"
    end
    #передаем хэш обратно
    {:winner => winner, :machin => machin}
  end
end
