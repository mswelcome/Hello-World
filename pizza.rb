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
	sauce = ["tomato","BBQ","Hot"].shuffle.first
	puts "Your sauce is #{sauce}"
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
	z = @i * 10
	puts "#{@i} pizzas ordered with the total being #{z}"
end

num.times do
	crust
	sauce
	cheese
	veg
	meat
	special
	counter
puts "-----------------"
end