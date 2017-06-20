# Welcome to Sonic Pi v2.11.1
def wear(smell)
  sample( :drum_bass_hard, rate: smell)
  sleep(1)
end

def wash(temperature)
  sample(temperature)
  sleep(1)
end

def dry(time)
  sample(time)
  sleep(1)
end

def dirty?
  1 ==[1,2].choose
end

def clean?
  2 ==[1,2].choose
end

def treat_stain
  sample( :ambi_choir)
  sleep(2)
end
def dont_treat_stain
  sample( :ambi_dark_woosh)
  sleep(1)
end


5.times do
  wash(60)
  treat_stain if dirty?
  dont_treat_stain if clean?
  wear(5)
  dry( :drum_tom_hi_hard)
end


