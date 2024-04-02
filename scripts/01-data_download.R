#### Preamble ####
# Purpose: Download data for NFL quarterbacks
# Author: 
# Date: 30 March 2024
# Contact: 

#### Workspace setup ####
library(nflreadr)
library(dplyr)
library(readr)

#### Load data ####
qb_regular_season_stats <- 
  load_player_stats(seasons = TRUE) |> 
  filter(season_type == "REG" & position == "QB")

write_csv(qb_regular_season_stats, "data/qb_regular_season_stats.csv")
