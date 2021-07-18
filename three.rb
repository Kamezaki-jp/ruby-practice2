n = gets.split(" ")

i = 0

while i < 9 do
    if i % 3 == 2
        puts n[i]
    else
        print n[i] + " "
    end
    i += 1
end