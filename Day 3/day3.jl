function greet()
    x = "hello"
    println(x)
end 

function sum_to(n)
    s = 0
    for i = 1:n 
        s = s+i
    end 
    return s 
end 

function sum_to_def(n)
    s = 0
    for i = 1:n
        t = s+i
        s = t
    end 
    return s, @isdefined(t)
end 

function sum_to_def_closure(n) 
    function loop_body(i)
        t = s+i 
        s = t
    end 
    s = 0
    for i = 1:n 
        loop_body(i)
    end 
    return s, @isdefined(t)
end 

for i = 1:3 
    x = "hello"
    println(x)
end 

s = 0 
for i = 1:10 
    t = s+i 
    s = t
end 
println(s)
@isdefined(t)

function f()
    i= 0
    for i = 1:3 
    end 
    return i
end; 
