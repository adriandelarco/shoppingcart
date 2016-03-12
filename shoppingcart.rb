puts "¿Qué día es hoy?"
$day = gets.chomp.downcase
if $day == "lunes"
	$day = 1
elsif $day == "martes"
 	$day = 2
elsif $day == "miercoles"
 	$day = 3
 elsif $day == "jueves"
 	$day = 4
 elsif $day == "viernes"
 	$day = 5
 elsif $day == "sabado"
 	$day = 6
 elsif $day == "domingo"
 	$day = 7
 end


class ShoppingCart
	#attr_reader :day
	def initialize #(day)
		@items_list = []
		#@day = day
		@base_cost = 0
	end
	def add_item(item)
    	@items_list.push(item)
    end
    def checkout
    	total_cost = @base_cost
    	items_in_cart = 0
 	    @items_list.each do |item|
 	       items_in_cart += 1
     	   total_cost = total_cost + item.precio
  	    end
  	    if items_in_cart > 5 
        	total_cost = total_cost * 0.9
        end
        total_cost
    end  	
end

class Item
	attr_reader :price
	def initialize(name, price)
		@name = name
		@price = price
	end
	def precio
		final_price = @price
		final_price
	end
end

class Houseware < Item
		attr_reader :precio
	def precio
		final_price = @price
	    if price > 100
	   		final_price = final_price * 0.95
	    end
		final_price
	end
end

class Fruit < Item
	attr_reader :precio
  	def precio
  		final_price = @price  
	    if $day > 5 
	      	final_price = final_price * 0.9
	    else
	    	final_price = final_price # MIRAR SI HACE FALTA luego
	    end
  	final_price
  	end
end

banana = Fruit.new("Manzana", 10)
orange = Fruit.new("Orange",0.20)
kiwi = Fruit.new("Kiwi",0.80)
lemon = Fruit.new("Lemon",0.10)
mango = Fruit.new("Mango",1.90)

vacuum = Houseware.new("Vacuum Cleaner", 150)
dishes = Houseware.new("Dishes", 40)

orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies",2)
oj = Item.new("Orange Juice", 10)

joshs_cart = ShoppingCart.new #(1)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(banana)

puts "Your total today is #{joshs_cart.checkout}€. Have a nice day!"