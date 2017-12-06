"
@group_members: Corentin Marionneau, Merlin Barzilai
This is a julia implementation of the Sieve of Erathostene
It is somewhat intentionnaly sub-optimal

@doc:
the function proceeds as follows:
    a return value is initaliset as the set containing all numbers from 1 to n
    we then substract every set containing multiples of every value
    from 2 to n/2 (as any multiple of a number greater than n/2 would also be
    greater than n, and thus, out of range)

    this implementation suffers from a form of sub-optimality
    as the constructed sets do not take in account values that were already removed
    i.e: the multiples of four are parsed, even though they were ruled out when checking
    multiples of two, then setdiff() is still called, and it does nothing.
"
function crible(n)
    ret = Set{Int64}(collect(2:n))
    for i in collect(2:n)
        tmp = Set{Int64}(collect(2*i:i:n))
        ret = setdiff(ret,tmp)
    end

    return ret
end

print(crible(parse(Int64, ARGS[1])))
print("\n")
