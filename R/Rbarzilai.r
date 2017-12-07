# @group_members: Corentin Marionneau, Merlin Barzilai
# This is a R implementation of the Sieve of Erathostene
# This implementation is recursive


crible <- function(n){
  # Initialising an array from 2 to n
  t <- 2:n
  # For each number between 2 and square root of n (because no need to go further)
  for (i in 2:sqrt(n)) {
    # We keep only the values not multiples of i (or i itself)
    t = Filter(function (x) x%%i != 0 || x == i, t)
  }
  return(t)
}
