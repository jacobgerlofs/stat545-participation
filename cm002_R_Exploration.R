
(times <- c(60, 40, 33, 15, 20, 55, 35))
times / 60

#this is a comment


# Basic Functions and Logicals 
avg <- mean(times)

root2 <- sqrt(times)
spread <- range(times)

times < 30
times == 20
times != 20
times > 20 & times < 50
times > 20 | times > 50

which (times < 30) 

# Subsetting

times [3]
times [-3]
times [c(2,4)]
times [2:5]

times [times < 30] # creates a vector of length 7 containing TRUEs and FALSEs in inner operation, then extracts the TRUE values with the outer operation
times [times > 50] <- 50 
times

# NA

times [8] <- NA
times
mean (times) # can't calc a mean with a missing value

# Functions II

mean(times, na.rm = TRUE)
mean(times, 0, TRUE) #if you enter all arguments in order, no need to assign them like in the previous function call. But better practice to assign them

