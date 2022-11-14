t1 = @task begin 
    println("beginning task t1")
    sleep(3)
    println("finished task t1")
end

t2 = Task( () -> 
    begin
        println("beginning task t2")
        sleep(3)
        println("finished task t2")
    end
)


istaskstarted(t1)
istaskdone(t1)

schedule(t1)

schedule(t2); wait(t2)

istaskstarted(t1)
istaskdone(t1)

urllist = ["https://www.google.com", "https://www.yahoo.com",
           "https://www.facebook.com", "https://docs.julialang.org/",
           "https://www.udemy.com", "https://www.coursera.org/"]

@time for url ∈ urllist
    download(url)
end

@time @sync for url ∈ urllist 
    @async download(url)
end

function inputTask(ch::Channel)
    for i ∈ 1:5
        put!(ch, i^2)
    end
end
    
chnl = Channel(inputTask)

take!(chnl)
take!(chnl)
take!(chnl)
take!(chnl)
take!(chnl)
take!(chnl)

for i in Channel(inputTask)
    @show i 
end
Threads.nthreads()

# Example from Julia documentation
mysum = Ref(0);

Threads.@threads for i in 1:1000
    mysum[] += 1
end

mysum[]

mysum = Threads.Atomic{Int64}(0)

Threads.@threads for i ∈ 1:1000
    Threads.atomic_add!(mysum, 1)
end

mysum[]

using Base.Threads

using BenchmarkTools

v = [rand(1_000_000) for i ∈ 1:36]

function vecmean(vec)
    s = 0
    count = 0
    for i in eachindex(vec)
        s += vec[i]
        count += 1
    end 
    avg = s / count 
    return avg      
end
    
vecmean(v[1])    

function serial_mean(vect)
    sums = zeros(length(vect))
    for i in eachindex(vect)
        sums[i] = vecmean(vect[i])
    end
    return sums 
end

@btime serial_mean(v)

function threaded_mean(vect)
    sums = zeros(length(vect))
    Threads.@threads for i in eachindex(vect)
        sums[i] = vecmean(vect[i])
    end
    return sums 
end

@btime threaded_mean(v)

function spawn_mean(vect)
    tasks = [Threads.@spawn vecmean(vect[i]) for i in 1:length(vect)]
    sums = [fetch(t) for t in tasks]
    return sums     
end

@btime spawn_mean(v)

v1 = rand(20_000);
v2 = [rand(1000) for i in 1:143];
v = [v1, v2...];

sum_serial = serial_mean(v);
sum_thread = threaded_mean(v);
sum_spawn = spawn_mean(v);

sum_serial == sum_thread == sum_spawn

@btime serial_mean(v);
@btime threaded_mean(v);
@btime spawn_mean(v);
