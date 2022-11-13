*
methods(*)
*(3, 4)
*(7.5, 6.6)
*(4, 6.9)

mat1 = reshape(Vector(1:12), (3,4))
mat2 = reshape(Vector(11:22), (4,3))
*(mat1, mat2)
*("Julia", " Programming")
f(x::Float64, y::Float64) = x^2 + y^2
f(3.0, 6.0)
f(3, 6)
f(3f0, 6f0)
f(x::Number, y::Number) = x^2 - y^2
f(7.0, 4)
f(8, 6)
f(5.6, 9)
f(3.0,4.0)
f("xyz", 4.5)
methods(f)

f(x, y) = "I couldn't find the correct method."
f(x::Any, y::Any) = "I couldn't find the correct method."

methods(f)

f("xyz", 5)

g(x::Int64, y) = x  * y
g(x, y::Int64) = x / y

g(4, 4.5)
g(4.5, 4)
g(4, 5)
g(x::Int64, y::Int64) = x + y
h(x=3, y=4) = x + y
h()
h(x::Int, y::Int) = x - y
h()
test_types(x::T, y::T) where {T} = "Arguments have the same type"

test_types(4, 5)
test_types(5.6, 9.8)
test_types("abc", "def")
test_types(5, 3.2)
test_types(x, y) = "Argument types are different"
test_types(4, 5.6)

find_type(x::T) where {T} = T
find_type("abc")
find_type(4 + 5im)

test_types_number(x::T, y::T) where {T <: Number} = "Same type numbers!"
test_types_number(3, 5)
test_types_number(4.5, 6.7)
test_types_number(3, 7.7)
test_types_number(x::Number, y::Number) = "Both numbers but different types"
test_types_number(4, 5.5)
test_types_number(4, "abc")
test_types_number(x, y) = "At least one argument is not number"
test_types_number("abc", 5)

find_types(x::T, y::P) where {T<:String, P<:Number} = "$x is String and $y is Number"
find_types("xyz", 5)

check_types(a::Array{T}, x::T) where {T} = "$x has the same type with the array."
check_types(Vector(1:15), 20)

check_types(["xy", "bc", "kl"], "a")

abstract type Shape end

struct Circle <: Shape
    radius::Float64 
end

struct Rectangle <: Shape
    width::Float64
    height::Float64 
end

area(s::Circle) = π * s.radius^2
area(s::Rectangle) = s.width * s.height

rect = Rectangle(3.5, 9.6)
circ = Circle(6.4)

area(rect)
area(circ)

Base.show(io::IO, s::Shape) = println(io, "Shape: ", typeof(s), ", Area: ", area(s))
rect
circ

two_args(x::Vararg{Number, 2}) = maximum(x)
two_args(5, 3.4)
two_args(5)
two_args(3, 5.4, 7.8)
mutable struct model{R}
    coefficients::Vector{R}
end

function (m::model)(x)
    coeffs = m.coefficients
    s = 0
    for i in 1:length(x)
        s += x[i]*coeffs[i]
    end
    return s 
end
lm = model([1, 3, 5])
lm([2, 4, 6])
# Constructors
mutable struct ModelVars 
    x₁::Float64 
    x₂::Float64 
    x₃::Float64 
end

fieldnames(ModelVars)

m1 = ModelVars(2.5, 5.6, 7.8)
methods(ModelVars)
ModelVars(3, 5, 7)

m1.x₁
m1.x₂

m1.x₃ = 6.2;
m1

abstract type Student end 
Student()

mutable struct CSStudent <: Student 
    name::String
    student_id::Int64 
    gpa::Float64 
    specialization::String 
    programming_language::String 
end

methods(CSStudent)

cs1 = CSStudent("George", 123456, 3.75, "Data Science", "Julia")

CSStudent(name, id, gpa) = CSStudent(name, id, gpa, "Data Science", "Julia")
methods(CSStudent)

cs2 = CSStudent("Mary", 112233, 3.95)
cs3 = CSStudent("Ali", 135797, 3.11, "Development", "Java")

mutable struct DataScienceStudent <: CSStudent end
end

function CSStudent(; name,
                     student_id,
                     gpa = NaN,
                     specialization = "Data Science",
                     programming_language = "Julia")
    return CSStudent(name, student_id, gpa, specialization, programming_language)  
end

cs4 = CSStudent(name="Mario", student_id=654321, specialization="Mobile Development", programming_language="Kotlin")
cs4.gpa = 3.4;
cs4 

students = CSStudent[]
push!(students, cs1, cs2, cs3, cs4)


mutable struct MathStudent 
    name::String 
    student_id::Int64 
    gpa::Float64 

    MathStudent(name, student_id, gpa) = gpa < 0 ? throw("gpa cannot be negative") : new(name, student_id, gpa)
end

m1 = MathStudent("Karl", 111222, 3.4)
m2 = MathStudent("Ben", 345123, -3.0)

mutable struct EconStudent 
    name::String 
    student_id::Int64 
    gpa::Float64 

    function EconStudent(name, student_id, gpa)
        if name == "" 
            throw("Student name cannot be empty")
        elseif student_id == NaN || student_id == 0 
            throw("Student ID cannot be empty")
        elseif gpa < 0 || gpa > 4.0 
            throw("Enter a valid gpa")
        else
            new(name, student_id, gpa)
        end        
    end
end

es1 = EconStudent("", 123456, 3.2)
es1 = EconStudent("Daniel", 0, 3.2)
es1 = EconStudent("Daniel", 456789, 5)
es1 = EconStudent("Daniel", 456789, 3.2)

MathStudent()

mutable struct PhysStudent <: Student 
    name::String 
    student_id::Int64 
    gpa::Float64 

    PhysStudent() = new()
end

ps1 = PhysStudent()
methods(PhysStudent)

mutable struct Course 
    name::String 
    student::Array{Union{CSStudent, MathStudent, EconStudent}, 1}
    opened::Bool 

    Course(name::String) = new(name::String, String[], false)
    Course(name::String, members) = new(name, members, length(members) ≥ 5)
end
julia101 = Course("Programming with Julia", [cs1, cs2, cs3, cs4, m1, es1])
# Neural Networks Demo
mutable struct Layer 
    w::Array{Float64, 2}
end

Layer(input::Int, output::Int) = Layer(rand(Float64, (output, input)))

(l::Layer)(x) = (l.w * x)

l1 = Layer(3,4)
l1.w
l2 = Layer(4,3)
l2.w
l3 = Layer(3,1)
l3.w

x = [5, 7, 9]

l1_values = l1(x)
l2_values = l2(l1_values)
ŷ = l3(l2_values)

mutable struct Network 
    layers 
    Network(layers...) = new(layers)
end

(n::Network)(x) = (for l in n.layers; x = l(x); end; x)

nn = Network(l1, l2, l3)
nn.layers[1].w 
nn.layers[2].w 
nn.layers[3].w 
nn(x)
ŷ == nn(x)
