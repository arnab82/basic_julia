numbers = rand(-1000:1000, 200)

maxnum = typemin(Int64)
for num in numbers
    if num > maxnum
        maxnum = num 
    end
end
println(maxnum)

newnumbers = rand(0:1000_000, 1000)
maxnum = typemin(Int64)
for num in newnumbers
    if num > maxnum
        maxnum = num 
    end
end
println(maxnum)

function mymax(array)
    maxnum = typemin(Int64)
    for num in array 
        if num > maxnum 
            maxnum = num 
        end
    end
    return maxnum 
end

mymax(numbers)
mymax(newnumbers)

max1 = mymax(numbers)
max2 = mymax(newnumbers)

function greet()
    println("Welcome to Julia Programming Course!")
    println("I hope you enjoy it...")
end
greet()

function greet()
    println("Welcome to Julia Programming Course!")
    println("I hope you enjoy it...")
    return nothing
end

function power(x, y)
    x^y 
end

power(3,4)

p(x,y) = x^y
p(3,4)

ϕ(x,y) = x^y
ϕ(3,4)

ϕ

phi = ϕ
phi(3,4)

function fact(n::Integer) 
    f = 1
    for i ∈ 1:n 
        f *= i
    end
    return f 
end

fact(5)
fact(2)

function fact(n::Integer)::Integer
    f = 1
    for i ∈ 1:n 
        f *= i
    end
    return f 
end

function absDiff(a,b)
    if a > b 
        return a - b 
    else
        return b - a
    end
end

absDiff(-2,5)

*(3,4,5)

m = *;
m(3,4,5)

function findmeansd(array)
    total = 0
    n = 0

    for el in array 
        total += el 
        n += 1 
    end
    μ = total / n 

    σ = 0
    for el in array
        σ += (el - μ)^2
    end
    σ = √(σ/(n-1)) 

    return μ, σ
end

array = [4, 5, 6, 8, 12, 34, 65, 98, 76, 36, 35, 100]

findmeansd(array)
avg, sd = findmeansd(array)
avg
sd

res = findmeansd(array)
res[1]
res[2]

using Statistics
mean(array)
std(array)

x -> 3x^2 + 5x - 4
ans(4)

g = x -> 3x^2 + 5x - 4
g(5)

(x, y, z) -> (x^3 - y^3) / y^3

fact(n) = n == 1 ? n : n * fact(n-1)

fact(3)
fact(5)

fibo(n) = n < 2 ? n : fibo(n-1) + fibo(n-2)
fibo(10)
arr = [5, 8, 12, 17, 24, 42];
sqarr = Int64[]

for el in arr   
    append!(sqarr, el^2)
end
println(sqarr)

sqarr = map(x -> x^2, arr)
sqarr

broadcast(x -> x^2, arr)

rowvec = [1 2 3 4 5]
colvec = [10, 20, 30, 40, 50]

map(+, rowvec, colvec)

rowvec .+ colvec

reduce(+, arr)

filter( x -> x %4 == 0, arr)

sqarr = map(x -> x^2, arr)
sumsqr = reduce(+, sqarr)
mapreduce(x -> x^2, +, arr)

struct Course
    subject::Symbol 
    field::Symbol
    ncourses::Int 
    nstudents::Int
end

coursedata = [Course(:Julia, :Programming, 10, 250), Course(:Python, :Programming, 50, 750), 
              Course(:Mathematics, :Science, 30, 100), Course(:Physics, :Science, 45, 300),
              Course(:R, :Programming, 35, 300)]

nprogramming = filter(x -> x.field === :Programming, coursedata)
nstudents = map(x -> x.ncourses * x.nstudents, nprogramming)
totalstudents = reduce(+, nstudents)

function nfield(data, field)
   f = filter(x -> x.field === Symbol(field), data)
   s = mapreduce(x -> x.ncourses * x.nstudents, +, f)
   return s 
end

nfield(coursedata, "Programming")
nfield(coursedata, "Science")

function f(x)
    if (x % 2 == 0) && (x % 3 != 0)
        return "Div2"
    elseif (x % 3 == 0) && (x %2 != 0)
        return "Div3"
    elseif (x % 6 == 0)
        return "Div6"
    else
        return "DivNone"
    end        
end

map(f, arr)

map(x -> begin
            if (x % 2 == 0) && (x % 3 != 0)
                return "Div2"
            elseif (x % 3 == 0) && (x %2 != 0)
                return "Div3"
            elseif (x % 6 == 0)
                return "Div6"
            else
                return "DivNone"
            end
        end,    
    arr)

map(arr) do x
    if (x % 2 == 0) && (x % 3 != 0)
        return "Div2"
    elseif (x % 3 == 0) && (x %2 != 0)
        return "Div3"
    elseif (x % 6 == 0)
        return "Div6"
    else
        return "DivNone"
    end
end


data = "Programming with Julia.\nHigher order functions.\nMap, reduce and filter."

open("input.txt", "w") do io 
    write(io, data)
end
varfunc(x...) = (x)
varfunc(3)
varfunc(3,4,5)

function printall(x...)
    println(x)
end

printall("Julia")
printall("Julia", "Python")
printall("Julia", "Python", "C++", "R", "Java")

addall(x, y...) = x + addall(y...)
addall(x) = x
addall(7)
addall(5, 7, 12)
addall(7, 12, 14, 32, 35)

findmin(x, y) = x < y ? x : y
findmin(x,y...) = findmin(x, findmin(y...))
findmin(4, 1, -4, 17, 7)

a, b, c... = [3, 5, 9, 3, 11, 35]; 
a
b
c


function printtype(args...)
    for (i, arg) ∈ enumerate(args)
        println("$i: Type of $arg is $(typeof(arg))")
    end
end

printtype(1, 3.14, "math", true)

(1:10...,)
(0:10:50...,)

function printargs(a, b, c)
    println(a)
    println(b)
    println(c)
end

tpl = ["mathematics", "physics", "chemistry"]
printargs(tpl)

printargs(tpl...)
pow(a,b=2) = a^b

pow(3,4)
pow(14)

findmin(x, y) = x < y ? x : y
findmin(x,y...) = findmin(x, findmin(y...))
findmin(10)

findmin(x, y=x) = x < y ? x : y
findmin(x,y...) = findmin(x, findmin(y...))
findmin(10)


function positionargs(x, y=10, z=20, t=30) 
    println("x = $x")
    println("y = $y")
    println("z = $z")
    println("t = $t")
end

positionargs(1)
positionargs(1, 2)
positionargs(1, 2, 3)
positionargs(1, 2, 3, 4)
positionargs(x=5)


function keywordargs(x; y=10, z=20, t=30)
    println("x = $x")
    println("y = $y")
    println("z = $z")
    println("t = $t")
end

keywordargs(1)
keywordargs(1, t=300)
keywordargs(1, t=300, z=200)

keywordargs(1; z=999, y=444, t=555)
x = rand(-10:10, 20);

square(x) = x.^2;
(sum ∘ square)(x)
x |> square |> sum

x |> (a -> a .- sum(a)/length(a)) .|> square |> sum |> sqrt



str = "Writing functions in Julia Programming"
str |> split .|> length

str |> split .|> first 
x = [35, 1, -7, 12, -11, -17]

sort(x)
x 

sort!(x)
x 


function padwithzero(vector, n)    
    x = vcat(zeros(n), vector, zeros(n))
    return x
end


padwithzero(x, 3)
x

function padwithzero!(vec, n)
    for i in 1:n 
        insert!(vec, 1, 0)
    end

    for i in 1:n 
        append!(vec, 0)
    end
end

padwithzero!(x, 3)
x
