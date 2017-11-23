## Reading the files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
## Making a data frame with the total emissions per year
tot_emi <- data.frame(Year = unique(NEI$year),Total_Emissions = tapply(NEI$Emissions,NEI$year,sum))
## converting total emissions into thousands for easier reading
tot_emi$Total_Emissions<-tot_emi$Total_Emissions/1000
## plpotting
png("plot1.png",width = 480,height = 480)
plot(tot_emi,xlab = "Year",ylab = "Total Emissions (Thousands)",main = "Total PM2.5 Emissions per Year",xaxt='n')
axis(1,tot_emi$Year)
lines(tot_emi)
dev.off()
## esto es un cambio
