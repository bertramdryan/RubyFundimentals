
def collataz(num)
  attempts = 0
  n = num
  while n != 1 || attempts <= 100_000
    if n % 2 == 0
      n = n/2
    else
      n = n * 3 + 1
    end
    attempts += 1
  end
  return attempts, num
end

# attempts, num = collataz(8694777)
# p "Attempts: #{attempts} on number: #{num}"

number = 6
still_working = true

while still_working
  attempts, num = collataz(number)
  if num % 1_000_000 == 0
    p "Attempts: #{attempts} on number: #{num/1_000_000} million"
  end
  number+=1

  if attempts >= 20_000
    p "Attempts: #{attempts} on number: #{num}"
    # p "above hit 10 billion attempts without getting to 1"
  end
end

