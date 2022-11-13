volume = begin
    a = 12
    b = 9
    c = 5
    a * b * c
end

area = begin
    a = 12
    b = 9
    c = 5
    2 * (a*b + a*c + b*c)
end

volume

area

volume = (a=12; b=9; c=5; a*b*c)
area = (a=12; b=9; c=5; 2*(a*b + a*c + b*c))

volume = (a=12;
          b=9;
          c=5;
          a*b*c)
score = 70
if score > 60
    println("passed")
end

score > 60

score = 40;
if score > 60
    println("passed")
end

if score > 60 
    println("Congratulations, you passed!")
else
    println("I am sorry. You failed.")
end


score = 75
if score > 60 
    println("Congratulations, you passed!")
else
    println("I am sorry. You failed.")
end


score = 25
if score > 60 
    println("Congratulations, you passed!")
else
    println("I am sorry. You failed.")
end

if score ≥ 85
    println("Your grade is A")
else
    if score ≥ 70
        println("Your grade is B")
    else
        if score ≥ 60
            println("Your grade is C")
        else
            println("Your score is F")
        end
    end
end

if score ≥ 85
    println("Your grade is A")
elseif score ≥ 70
    println("Your grade is B")
elseif score ≥ 60
    println("Your grade is C")
else 
    println("Your score is F")
end


# if score ≥ 85 && score < 100
# if 85 ≤ score < 100

println("Enter your score: ")
score = readline();
score = parse(Int64, score)

if 85 ≤ score ≤ 100
    println("Your grade is A")
elseif 70 ≤ score < 85
    println("Your grade is B")
elseif 60 ≤ score <70
    println("Your grade is C")
elseif 0 ≤ score < 60 
    println("Your score is F")
else
    println("You haven't entered a valid score")
end
print("Enter your age: ")
age = readline()
#age = parse(Int, age)
(tryparse(Int, age) === nothing) && (println("Please enter a numeric input!"); exit())
(tryparse(Int, age) === nothing) || (age = parse(Int, age))

(0 < age < 100) && (println("Your age is $age."))
(0 < age < 100) || (println("Please enter a number between 0 and 100!"))
for i in 1:length(arr)
    println("$(i). element is $(arr[i]).")
end
for (index, value) ∈ enumerate(arr)
    println("The $(index). element $(value).")
end
mat = rand(15:44, (3,2))
for row in 1:size(mat,1)
    for col in 1:size(mat,2)
        println("Row: $row, Column: $col, Value: $(mat[row,col])")
    end
end
for row in 1:size(mat,1), col in 1:size(mat,2)
    println("Row: $row, Column: $col, Value: $(mat[row,col])")
end
for row in 1:6
    for col in 1:4
        print((row, col))
    end
    println()
end
for row in 1:6, col in 1:4
    print((row, col))
    
    if col == 4
        println()
    end
end
names = ["Albert", "Marie", "Isaac", "Rosalind", "Richard"]
surnames = ["Einstein", "Curie", "Newton", "Franklin", "Feynman"]
birthyears = [1879, 1867, 1643, 1920, 1918];
for (name, surname, byear) in zip(names, surnames, birthyears)
    println((name, surname, byear))
end
d = Dict("a" => 10, "b" => 20, "c" => 30, "d" => 40)
for (key, val) in d 
    println("Key is: $key, Value is: $val")
end
for item in d 
    println("Key is: $(item.first), Value is: $(item.second)")
end
str = "Julia Language"
for c in str 
    print("$c|") 
end
file = "inputFile.txt"

for line ∈ eachline(file)
    println(line)
end
csvfile = "input.csv"
for line ∈ eachline(csvfile)
    println(line)
end
arr = rand(-1_000_000:1_000_000, 100)
maxnum = typemin(Int64)

for num ∈ arr
    if num > maxnum
        maxnum = num
    end
end
println(maxnum)
sum = 0
n = 0

for num = arr
    sum += num
    n += 1
end
average = sum / n 
println(average)
