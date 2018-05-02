# frozen_string_literal: true

class Gate
  STATIONS = %i[umeda juso mikuni].freeze # :nodoc:
  FARES = [150, 190].freeze # :notod:

  # Gate オブジェクトの作成
  # ==== 引数
  # * +name+ = 駅名
  def initialize(name)
    @name = name
  end

  # 改札機を通って駅に入場する
  # ==== 引数
  # * +ticket+ - 切符
  def enter(ticket)
    ticket.stamp(@name)
  end

  # 改札機を通って駅から出場する
  # ==== 引数
  # * +ticket+ - 切符
  # ==== 戻り値
  # * +boolean+ - 運賃語りていれば+true+, 不足していれば+false+
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  # 運賃を計算する
  # ==== 引数
  # * +ticket+ - 切符
  # ==== 戻り値
  # * +integer+ - 切符の駅からオブジェクトの駅までの運賃
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
