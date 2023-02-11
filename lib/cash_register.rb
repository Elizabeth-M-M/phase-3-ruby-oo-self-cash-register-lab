class CashRegister
  attr_accessor :total, :discount, :bought
  attr_reader :last_bought

  def initialize(disc=20)
    @discount= disc
    @total=0
    @bought=[]
  end

  def add_item(title, price, quantity=1)
    for i in 1..quantity
      @bought<<title
    end
    @last_bought=[title, price, quantity]
    @total+=(price*quantity)
  end

  def apply_discount
    if @total ==0
      "There is no discount to apply."
    else
      total= @total * @discount / 100.00
    @total-=total.to_i
    "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @bought
  end

  def void_last_transaction
    last_purchase= @last_bought[1]*@last_bought[2]
    @total-=last_purchase
  end
end
c1= CashRegister.new








# puts c1.apply_discount
