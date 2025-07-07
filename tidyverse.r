# # install.packages("tidyverse")

# # Load the tidyverse package
# library(tidyverse)

# Create the employees data frame
employees <- data.frame(
  ID = 1:6,
  Name = c("Alice", "Bob", "Charlie", "David", "Eve", "Frank"),
  Age = c(25, 30, 35, 40, 45, 50),
  Department = c("HR", "IT", "Finance", "IT", "HR", "Finance"),
  Salary = c(50000, 60000, 70000, 80000, 55000, 75000)
)

library(dplyr)

# Print the data frame
print(employees)

print(employees)

str(employees)

summary(employees)

it_employees <- employees %>%
  filter(Department == "IT")

name_salary <- employees %>%
  select(Name, Salary)

employees_with_bonus <- employees %>%
  mutate(Bonus = Salary * 0.10)

average_salary <- employees %>%
  group_by(Department) %>%
  summarise(Average_Salary = mean(Salary))

total_salary_by_dept <- employees %>%
  group_by(Department) %>%
  summarise(Total_Salary = sum(Salary))

experienced_employees <- employees %>%
  filter(Age > 30) %>%
  mutate(Experience = Age - 25)

print(total_salary_by_dept)
print(experienced_employees)



