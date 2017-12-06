# @group_members: Corentin Marionneau, Merlin Barzilai
# This is a R implementation of the Sieve of Erathostene
# This implementation is recursive


cribleRec <- function(n,tab){
  # Stopping condition, if we get to 1 we return the array as it was
  if (n == 1)
  {
    return(tab)
  }
  # If we're not yet at 1, we remove all multiples of n from the array
  else
  {
    # Copying the current state of the array to create the result array
    newTab <- tab

    # Iterating all numbers above n and removing them if they're multiples of n
    for (i in n:max(tab)) {
      if (i != n)
      {
        if (i%%n == 0)
        {
          newTab <- newTab[newTab != i]
        }
      }
    }
    # Calling the same function for n-1 on the treated array
    return(cribleRec(n-1,newTab))
  }
}

# Calling the recursive function for numbers from 1 to n
crible <- function(n){
  # Starting with n/2 because it is useless to start above
  cribleRec(n/2,c(2:n))
}
