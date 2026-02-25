library(tidyverse)
library(janitor)
library(stringi)

# Configuration
input_file  <- "/Users/aishah/Desktop/Unclean Dataset.csv"
output_file <- "/Users/aishah/Desktop/Cleaned_Dataset.csv"

# 1. Import raw text with specific encoding
raw_lines <- readLines(input_file, encoding = "ISO-8859-1", warn = FALSE)

# 2. Convert to tibble and filter out lines without the pipe delimiter
# We use 'grepl' here instead of 'str_detect' to vary the function usage
dataset <- tibble(raw_content = raw_lines) %>%
  filter(grepl("\\|", raw_content))

# 3. Parse the raw string into columns
# Using 'separate_wider_delim'—the newer, preferred tidyverse way
dataset <- dataset %>%
  separate_wider_delim(
    cols = raw_content,
    delim = "|",
    names = c("id", "first_name", "last_name", "age", "gender", "course", "enrollment_date", "salary"),
    too_many = "drop",
    too_few = "align_start"
  )

# 4. Clean text encoding and whitespace
dataset <- dataset %>%
  mutate(across(where(is.character), ~ stri_trim_both(stri_enc_toutf8(.)))) %>%
  clean_names()

# 5. Type Casting
# Using 'mutate' with specific parsing functions
dataset <- dataset %>%
  mutate(
    id = as.integer(id),
    age = as.integer(age),
    enrollment_date = as.Date(enrollment_date),
    salary = as.numeric(str_remove_all(salary, "[^0-9.]"))
  )

# 6. Standardize Categories (Gender)
dataset <- dataset %>%
  mutate(gender = str_to_lower(gender)) %>%
  mutate(gender = case_match(
    gender,
    c("m", "male") ~ "male",
    c("f", "female") ~ "female",
    .default = NA_character_
  ))

# 7. Quality Control: Remove duplicates and filter valid ages
dataset <- dataset %>%
  distinct() %>%
  filter(age >= 0 & age <= 120)

# 8. Address Missing Values
# We'll use 'coalesce' here for a slightly different look than 'replace_na'
dataset <- dataset %>%
  mutate(
    age = coalesce(age, as.integer(median(age, na.rm = TRUE))),
    salary = coalesce(salary, median(salary, na.rm = TRUE))
  ) %>%
  drop_na(first_name, last_name, gender, course)

# 9. Final Save
write_csv(dataset, output_file)

# Summary for verification
cat("Data cleaning finished successfully.\n")
glimpse(dataset)
summary(dataset)