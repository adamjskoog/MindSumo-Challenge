nasa_kepler_data <- read.csv("../Kepler.csv", header = TRUE, sep = ",")
EU_data <- read.csv("../ExoplanetEU.csv", header = TRUE, sep = ",")
PHL_data <- read.csv("../PHL.csv", header = TRUE, sep = ",")

EURowCount <- nrow(EU_data)
keplerRowCount <- nrow(nasa_kepler_data)
#Find the number and percentage of Candidates, false positives and confirmations
keplerCandidates <- nrow(as.data.frame(nasa_kepler_data[nasa_kepler_data$koi_disposition == "CANDIDATE",]))
keplerFalsePos <- nrow(as.data.frame(nasa_kepler_data[nasa_kepler_data$koi_disposition == "FALSE POSITIVE",]))
keplerConfirmed <- nrow(as.data.frame(nasa_kepler_data[nasa_kepler_data$koi_disposition == "CONFIRMED",]))

EU_molecules <- as.data.frame(EU_data$molecules)

Habitable <- nrow(as.data.frame(PHL_data[!(PHL_data$P..Habitable == "0"),]))

keplerFalsePos / keplerRowCount
keplerConfirmed / keplerRowCount
keplerCandidates / keplerRowCount

