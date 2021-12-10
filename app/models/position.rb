class Position < ApplicationRecord
  belongs_to :user
  validates :asset, :amount, :user_id, presence: true

  def get_price
    request = HTTP.get("https://api2.binance.com/api/v3/ticker/24hr")
    request = request.parse(:json)

    # position[0].price = request[0]["lastPrice"]

    i = 0
    prices = []
    while i < request.length
      # request[i]["symbol"] == Position.find_by(asset: request[i]["symbol"])
      position = Position.find_by(asset: request[i]["symbol"])
      if position
        position.price = request[i]["lastPrice"]
        position.save
      end
      i += 1
    end
    return prices
  end
end
