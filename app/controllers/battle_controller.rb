class BattleController < ApplicationController
  before_action :set_data

  def index
  end

  def attack
    # プレイヤー攻撃
    damage = rand(1..@player.attack)
    @enemy.hp -= damage
    flash[:notice] = "勇者の攻撃！#{damage}ダメージ！"

    if @enemy.hp <= 0
      flash[:notice] += " #{@enemy.name} を倒した！"
      reset_enemy
    else
      enemy_attack
    end
    redirect_to root_path
  end

  def heal
    heal_amount = rand(5..10)
    @player.hp += heal_amount
    flash[:notice] = "勇者は回復した！HPが#{heal_amount}回復！"
    enemy_attack
    redirect_to root_path
  end

  private

  def set_data
    @player = Player.first
    @enemy = Enemy.first
  end

  def enemy_attack
    damage = rand(1..@enemy.attack)
    @player.hp -= damage
    flash[:notice] += " #{@enemy.name}の攻撃！#{damage}ダメージ！"
  end

  def reset_enemy
    @enemy.update(hp: rand(10..30))
  end
end
