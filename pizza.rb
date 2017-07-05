#Pizza Pie

def num()
	puts "How many pizzas would you like?"
	x = gets.chomp.to_i
end

def crust()
	crusts = ['thin','handtossed','thick'].shuffle.first
	puts "Your crust is #{crusts}"
end

def sauce()
	sauce = ["tomato","bbq","hot"].shuffle.first
		puts "Your sauce is #{sauce}"
	#puts "Choose your sauce: 1 Tomato, 2 bbq, 3 hot"
	#x = gets.chomp.to_i
	#if x == 1
	#puts "You chose tomato"
	#elsif x == 2
	#puts "You chose bbq"
	#elsif x == 3
	#puts "You chose hot"
	#else
	#puts "Please choose 1, 2 or 3."
	#end
end

def cheese()
	cheeses = ['Extra cheese','Parmassan','Asiago'].shuffle.first
	puts "Your cheese is #{cheeses}"
end

def meat()
	meats = ['pepperoni','sausage','ground beef','bacon','Philly Steak','chicken'].shuffle.first 
	puts "Your meat is #{meats}"
end

def veg()
	veggies = ['onions','green peppers','banana peppers','mushrooms','green olives','black olives'].shuffle.first
	puts "Your vegatable is #{veggies}"
end

def special()
	spec = ['sardines','cilantro','garlic','pineapple'].shuffle.first
	puts "Your special topping is #{spec}"
end

@i=0
def counter()
	@i = @i + 1
	#z = @i * 10
	puts "#{@i} pizzas ordered" #with the total being #{z}"
end

@cost = 0
def size()
	sizes = ['small','medium','large'].shuffle.first
	puts "Your size is #{sizes}"
	if sizes == 'small'
		puts "Your total is #{@cost=@cost+5}"
	elsif sizes == 'medium'
		puts "Your total is #{@cost=@cost+10}"
	else sizes == 'large'
		puts "Your total is #{@cost=@cost+15}"
	end
end

def delivery()
	tip = 0
	time = [1,2].shuffle.first
	puts "Would you like your pies delivered? (Yes or No)"
	x = gets.chomp
	if x == "yes"
		puts "Your total is now #{@cost=@cost+2}. It will be there in about 45 minutes. Thanks for your order."
	else x == "no"
		puts "Your order will be ready for pickup in 25 Minutes."
	end
	if time == 1
		puts "Thanks for getting my pizza here in under 30 minutes, here is your tip #{tip=@cost*0.20}."
	else time == 2
		puts "Thanks for the pizza, here is yoru tip #{tip=@cost*0.10}"
	end
end

def taxes()
	puts "Your total after tax comes to #{@cost=(@cost*0.06)+@cost}"
end

num.times do
	crust
	sauce
	cheese
	veg
	meat
	special
	size
	counter
puts "-----------------"
end

puts taxes()
puts delivery()
