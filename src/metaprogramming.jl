using Dates 

function gettime(myfunction)
    t0 = Dates.now()
    result = myfunction()
    t1 = Dates.now()
    duration = t1 - t0 
    println("Run time: ", duration)
    return result    
end

gettime(rand(1_000_000))
gettime(println("Metaprogramming is nice"))

function gettime(myfunction())
    t0 = Dates.now()
    result = myfunction()
    t1 = Dates.now()
    duration = t1 - t0 
    println("Run time: ", duration)
    return result    
end

gettime( () -> rand(1_000_000)  )
gettime( () -> println("Metaprogramming is nice"))

func() = rand(1_000_000)
gettime(func)

@time rand(1_000_000)

@time println("Metaprogramming is nice")
num = 7 + 8;

s = :num
typeof(s)
supertype(Symbol)

s
eval(s)

Symbol("num")
Symbol("num", 2)
Symbol("new", "num")

:(a + b)
ex = :(a + b)

typeof(ex)
supertype(Expr)

eval(ex)

a = 7; b = 6.4;
eval(ex)

Meta.parse("a + b")

:(
    begin
        c = a + b
        d = c^2 
        e = π*d
    end
)

quote
    c = a + b
    d = c^2 
    e = π*d
end

dump(ex)
propertynames(ex)
ex.head
ex.args

Expr(:call, :+, :a, :b)

ex2 = :(3x - 7y + z*t)
dump(ex2)
ex2.args
ex2.args[1]
ex2.args[2]
ex2.args[3]
ex2.args[2].args

using GraphRecipes, Plots 

plot(ex2, fontsize=16)

exp = :(
    function power(a,b)
        return a^b
    end
)
exp.head

exp2 = :(
    for i in 1:5
        println(i)
    end
)
exp2.head

exp3 = :(
    if a < b
        println(a)
    else
        println(b)
    end
)
exp3.head

:([x, y, z, t]) |> dump

mutable struct Point
    a 
    b 
end

Expr(:struct, true, :Point, Expr(:block, :a, :b))

mutable struct Point1 
    a::Float64 
    b::Float64
end

Expr(:struct, true, :Point1,
     Expr(:block,
          Expr(:(::), :a, :Float64),
          Expr(:(::), :b, :Float64)))

:(mutable struct Point
    a::Float64 
    b::Float64
end) |> dump 

:(x - 3y)

x = 5
:($x - 5y)

:(:x) |> dump

:(a = :x) |> dump 

ref = QuoteNode(:variable)
:(var = $ref)

ref2 = :variable2
:(var2 = $ref2)

:(ref = :var) |> dump

var = 7
:(ref = :($var))

:(ref = :($($var)))
macro hello(exp)
    println("Hello ", exp)
end

@hello("ilker")
@hello "ilker"

macro hello2(exp1, exp2)
    println("Hello, ", exp1, " and ", exp2)
end

@hello2("John", "Jack")
@hello2 "John" "Jack"

function func_hello(exp)
    println("Hello ", exp)
end

func_hello("ilker")

@hello ilker
func_hello(ilker)

func_hello(:ilker)

macro hello3(exp)
    :(
        println("Hello ", $(string(exp)))
    )
end

@hello3 ilker

macro myprint(ex)
    :(
        println($ex)
    )
end

@myprint "Julia"

function _my_print(x)
    @myprint x  
end

x = "Python"

_my_print("Julia")

@macroexpand @myprint x 

macro myprint2(ex)
    :(
        println($(esc(ex)))
    )
end

function _my_print2(x)
    @myprint2 x 
end

_my_print2("Julia")

f(x) = x + 8 
g(x) = x^3 
h(x) = x / 10

f(g(h(4)))

4 |> h |> g |> f 

macro chain(x, funs...)
    ex = Expr(:call, :($(funs[1])), :($x))
    for i in 2:length(funs)
        ex = Expr(:call, :($(funs[i])), :($ex))
    end
    return :($ex)
end

@chain 4 h g f 
@chain 10 x->x^2 x->x/2 x->x*7
