read(stdin, Char)

read(stdin, 5)

write(stdout, "Julia is cool.")

write(stdout, "Julia is cool."); # to supress the number of characters in the output

readline(stdin)

for line in eachline(stdin)
    if line == "exit" break end
    println("You printed >>> $line")
end

while !eof(stdin)
    c = read(stdin, Char)
    if c ∈ ['q', 'Q'] break end 
    println("Typed >>> $c")
end
touch("10_Streams_Networking\\sample_file.txt")

f = open("10_Streams_Networking\\sample_file.txt")
readlines(f)
close(f)

fname = "10_Streams_Networking\\sample_file.txt"

open(fname) do file 
    readlines(file)
end

open(fname) do file 
    for line in eachline(file)
        println(line)
    end
end

vec = 1:10

map(x -> x^3, vec)

map(vec) do x 
    x^3 
end

fname = "10_Streams_Networking\\sample_file.txt"
f2 = open(fname, "w")
write(f2, "This is a new line...\n")
close(f2)

f3 = open(fname, "a")
write(f3, "And another line\n")
close(f3)

open(fname, "a") do f
    write(f, "One more line...\n")
    close(f)
end

readdir()

readdir("10_Streams_Networking")
mkdir("10_Streams_Networking\\Data_Files")

for file in ["sales", "employees", "products"]
    touch("10_Streams_Networking\\Data_Files\\"*file*".txt")
end

dir = "10_Streams_Networking\\Data_Files"
files = readdir(dir)

for fname in files 
    file = dir*"\\"*fname
    open(file, "a") do f 
        write(f, "This is the first line in the file: "*fname)
        close(f)
    end
end

dir = "10_Streams_Networking\Data_Files"
mkdir(dir)
for fname in ["sales", "employees", "products"]
    file = dir*"\\"*".txt"
    write(file, "This is the first line in the file: "*fname*".txt")
end
using Sockets

server = listen(8000)
conn = accept(server)
line = readline(conn)
write(conn, "Hello client. How are you?\n")
close(conn)

server = listen(2000)
con = accept(server)
write(con, "Hi, client! What can I do for you?\n")

while true
    line = readline(con)
    println("Incoming message >>> $line")
end

using Sockets

server = listen(2001)

while true
    conn = accept(server)
    @async begin 
        while true
            line = readline(conn)
            println("Incoming message >>> $line")
        end
    end
end
