using BenchmarkTools

module A

struct Triangle
    side1
    side2
    side3
    angle1
    angle2
    angle3
end

end # end of module A

module B

struct Triangle
    side1   :: Float64 
    side2   :: Float64 
    side3   :: Float64 
    angle1  :: Float64 
    angle2  :: Float64 
    angle3  :: Float64 
end

end # end of module B

module C 

struct Triangle{T}
    side1   ::  T
    side2   ::  T
    side3   ::  T
    angle1  ::  T
    angle2  ::  T
    angle3  ::  T
end

end # end of module C 


using .A
using .B
using .C

function main()

    a::Float64 = 5.0

    # t = A.Triangle(a, a, a, a, a, a)
    # t = B.Triangle(a, a, a, a, a, a)
    t = C.Triangle{Float64}(a, a, a, a, a, a)

end

@benchmark main()
using Random

function row_major(A::Array{Float64})

    m, n = size(A)

    for i in 1:m
        for j in 1:n
            A[i,j] = 1
        end
    end

end

function col_major(A::Array{Float64})

    m, n = size(A)

    for j in 1:n
        for i in 1:m
            A[i,j] = 1
        end
    end

end

#=function main()

    n = 100

    A = randn(n,n)

    # @benchmark row_major($A)
    @benchmark col_major($A)

end

main()=#


function my_append()

    v = []

    for i in 1:10000
        push!(v, 5)
    end
end

function my_prealloc()

    v = Vector{Int64}(undef, 10000)

    for i in 1:10000
        v[i] = 5
    end
end

# @benchmark my_append()
@benchmark my_prealloc()

f(x) = 3x.^2 + 4x + 7x.^3
fdot(x) = 3 .* x.^2 .+ 4 .* x .+ 7 .* x.^3

#=function main()

    x = randn(10000)

    # @benchmark f($x)
    # @benchmark fdot($x)
    @benchmark f.($x)
end

main()=#
