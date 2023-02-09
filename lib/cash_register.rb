class CashRegister
  attr_accessor :total, :discount, :bought

  def initialize(disc=20)
    @discount= disc
    @total=0
    @bought=[]
  end
  def add_item(title, price, quantity=1)
    self.bought.push(title)
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
    # puts "hey"
    # self.bought<<item
    @bought

  end

end
c1= CashRegister.new
# puts c1.discount
# puts c1.items
c1.add_item('eggs', 20, 7)
c1.add_item('cookies', 16, 7)
c1.add_item('cookies', 16, 7)
puts c1.items
# puts c1.total


# puts c1.apply_discount
