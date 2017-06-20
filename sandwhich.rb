# How to make a sandwhich
def toastit
  sample ( :drum_bass_hard)
  sleep(1)
end

def toasted
  sample(:drum_cowbell)
  sleep(1)
end

def bacon(crispy)
  if crispy >= 5
    sample ( :drum_heavy_kick)
  else
    sample ( :drum_tom_hi_hard), rate:(crispy)
    sleep(0.5)
    bacon(crispy + 1)
  end
end

def eggs(whatkind)
  sample (whatkind)
  sleep(1)
end

def bread?
  1 ==[1,2].choose
end

def toast
  2 ==[1,2].choose
end

in_thread do
  2.times do
    toastit if bread?
    toasted if toast
    bacon(1)
    eggs (:drum_splash_hard)
  end
end


in_thread do
  2.times do
    toastit if bread?
    toasted if toast
    bacon(3)
    eggs (:drum_snare_soft)
  end
end








