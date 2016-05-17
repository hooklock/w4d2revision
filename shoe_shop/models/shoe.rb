class Shoe

  attr_reader(:first_name, :last_name, :address, :size, :quantity)

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @address = options['address']
    @size = options['size']
    @quantity = options['quantity'].to_i
  end

  def pretty_name
    pretty_name = @first_name + " " + @last_name
  end

  def save()
    sql = "INSERT INTO shoes(first_name, last_name, address, size, quantity) VALUES ('#{@first_name}', '#{@last_name}', '#{@address}', '#{@size}', #{@quantity})"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM shoes"
    shoes = SqlRunner.run(sql)
    result = shoes.map{ |shoe| Shoe.new(shoe) }
    return result
  end

end