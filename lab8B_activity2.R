# Load built-in data
data("AirPassengers")

# Story: Monthly growth of airline passengers over time
plot(AirPassengers, 
     type = "o", 
     col = "blue", 
     main = "Growth of International Airline Passengers (1949-1960)", 
     xlab = "Year", 
     ylab = "Total Passengers (Thousands)")

# Insight for Sales Manager:
# The data shows a clear upward trend in travel demand year-over-year, 
# with consistent seasonal peaks occurring every summer.