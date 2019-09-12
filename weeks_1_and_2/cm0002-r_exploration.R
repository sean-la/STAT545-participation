number <- 1
number * 2
number <- 5 + 2
number * 3
a <- 1
a*2

(times <- c(60,40,33,15,20,55,35))
times/60

mean(times)
sqrt(times)
range(times)

times < 30
times == 20
times != 20 # This is an inline comment
times > 20 & times < 50
times <= 20 | times >= 50
which(times < 30)
sum(times < 30)
(i <- which(times < 30))

# Subsetting
times[3]
times[-3]
times[c(2,4)]
2 & 4
times[c(2&4)]
times[c(4,2)]
times[1:5]
times[times < 30]
times[times < 50] <- 50
times[8] <- NA
times
mean(times)
?mean
mean(times, na.rm = TRUE)
mean(x = times, na.rm = TRUE)
mean(times, 0, TRUE)
mean(na.rm = TRUE, x = times)
mtcars
str(mtcars)
names(mtcars)
mtcars$mpg
