
# @author: Merlin Barzilai
# @group_members: Corentin Marionneau
# This is a julia implementation of the Sieve of Erathostene

function crible(n)
    ret = Set{Int64}(collect(2:n))
    for i in collect(2:n/2)
        tmp = Set{Int64}(collect(2*i:i:n))
        ret = setdiff(ret,tmp)
    end

    return ret
end

print(crible(parse(Int64, ARGS[1])))
print("\n")
