# syntax for julia programming language

## 1️⃣ Hello, variables, and types

```julia
println("Hello, Julia!")

x = 10          # Int
y = 3.5         # Float64
name = "Sarim"  # String
is_ready = true # Bool

println(x, " ", y, " ", name, " ", is_ready)

println(typeof(x))
println(typeof(y))
```

**Revision takeaway**

* Dynamic typing, but **strongly typed**
* Types are inferred automatically

---

## 2️⃣ Basic arithmetic & functions

```julia
a = 10
b = 3

println(a + b)
println(a / b)   # Float division
println(a ÷ b)   # Integer division
println(a % b)   # Modulus
println(a ^ b)   # Power

function add(x, y)
    return x + y
end

println(add(5, 7))
```

**Key idea**

* Functions are **first-class**
* `÷` exists (nice Julia touch)

---

## 3️⃣ Conditionals

```julia
score = 85

if score >= 90
    println("Excellent")
elseif score >= 70
    println("Good")
else
    println("Needs improvement")
end
```

Short form:

```julia
result = score >= 50 ? "Pass" : "Fail"
println(result)
```

---

## 4️⃣ Loops (for & while)

```julia
for i in 1:5
    println(i)
end
```

```julia
count = 1
while count <= 3
    println("Count: ", count)
    count += 1
end
```

---

## 5️⃣ Arrays (very important in Julia)

```julia
nums = [1, 2, 3, 4, 5]

push!(nums, 6)
println(nums)

println(nums[1])      # 1-based indexing!
println(length(nums))
```

Looping:

```julia
for n in nums
    println(n * 2)
end
```

---

## 6️⃣ Tuples & Dictionaries

```julia
person = ("Sarim", 22, "CS")
println(person[1])
```

```julia
student = Dict(
    "name" => "Sarim",
    "age" => 22,
    "major" => "CS"
)

println(student["name"])
```

---

## 7️⃣ Functions + multiple dispatch (Julia’s superpower)

```julia
function area(radius::Float64)
    return π * radius^2
end

function area(length::Int, width::Int)
    return length * width
end

println(area(3.0))
println(area(4, 5))
```

**Revision takeaway**

* Same function name
* Different behavior based on types

---

## 8️⃣ Simple struct (like a class)

```julia
struct User
    name::String
    age::Int
end

u1 = User("Sarim", 22)
println(u1.name)
println(u1.age)
```

Immutable by default (important concept).

---

## 9️⃣ Basic file I/O

```julia
open("data.txt", "w") do file
    write(file, "Hello Julia")
end

content = read("data.txt", String)
println(content)
```

---

## 🔟 Small practical example (ties it together)

```julia
function average(nums::Vector{Int})
    total = 0
    for n in nums
        total += n
    end
    return total / length(nums)
end

scores = [70, 80, 90, 85]
println("Average score: ", average(scores))
```

---
