# 1. Variables and Relational Operators in R
cat("• Section 1\n\n")

x <- 4      # or you could simply use '=';
y <- 8
z <- x != y # or z = x != y but '!<-' is not allowed in R;
z           # Output: [1] TRUE; as it is a relational operator, the output is a boolean output;

d = x > y
d           # Output: [1] False;

cat("\n")





# 2. Creating and Displaying a List in R
cat("• Section 2\n\n")

first_list <- list("apple", "banana", "cherry", "potato", "tomato", "lichi", "mango") # '<-' and '=' are the same thing;
first_list

cat("\n")





# 3. List Indexing : [] vs [[]] in R
cat("• Section 3\n\n")

first_list[[1]]

cat("Execution Successful (1st Element)\n\n")

# exception—

first_list[1]   # and it stil runs

# '[]' returns a sub-list
# '[[]]' returns the element itself
# It's always the best choice to use '[[]]' if you want to print an element only;
cat("Execution Successful (Sub-list)\n\n")

first_list[1:4] # returns a sub-list from 1st to 4th element

cat("Execution Successful (Contains 1st 4 elements)\n\n")

first_list[[4]] # returns the 4th element

cat("Execution Successful (4th element)\n\n\n")





# 4. Finding the Length of a List in R
cat("• Section 4\n\n")

length(first_list) # find length of the list

cat("\n")





# 5. Checking if an Element Exists in a List
cat("• Section 5\n\n")

"tomato" %in% first_list # Output: [1] True; as it is inside the list
"alu" %in% first_list    # Output: [1] False; as it is not inside the list

cat("\n\n")





# 6. Adding an Element to a List in R
cat("• Section 6\n\n")

new_list <- append(first_list, "black berry") # adds 'black berry' as the latest element
new_list
length(new_list)

cat("\n\n")





# 7. Removing an Element from a List in R
cat("• Section 7\n\n")

new_list <- new_list[-4] # removes the element at position 4
new_list
length(new_list)

cat("\n\n")





# 8. Combining Two Lists in R
cat("• Section 8\n\n")

list_one = list("Neel", "Marufa", "Sabbir")
list_two = list("Adnan", "Tawsif", "Jihad", "Mili")
combined_list = c(list_one, list_two)
combined_list # Never ever forget to mention what to print

cat("\n\n")





# 9. Creating Matrices in R: Row-wise vs Column-wise
cat("• Section 9\n\n")

matrix = matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
matrix

# Output:
#          1 2 3
#          4 5 6
#          7 8 9
cat("\n\n")

matrix = matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE)
matrix

# Output:
#          1 4 7
#          2 5 8
#          3 6 9

# here 1:9 means 1, 2, 3, 4, 5, 6, 7, 8, 9, which is 1 - 9;
cat("\n\n")

matrix = matrix(c(1, 2, 3, 11, 22, 33, 111, 222, 333), nrow = 3, ncol = 3, byrow = TRUE)
matrix

# Output:
#          [,1] [,2] [,3]
#     [1,]    1    2    3
#     [2,]   11   22   33
#     [3,]  111  222  333
cat("\n\n")

matrix = matrix(c(1, 2, 3, 11, 22, 33, 111, 222, 333), nrow = 3, ncol = 3, byrow = FALSE)
matrix

# Output:
#          [,1] [,2] [,3]
#     [1,]    1   11  111
#     [2,]    2   22  222
#     [3,]    3   33  333