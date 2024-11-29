# Air Traffic Analysis for Fund Managers :airplane:
This exercise aimed to provide valuable, data-derived insights to the following air traffic data to hypothetical fund managers who wish to invest in one of three major airline stocks. As the Data Scientist, I was responsible in providing answers to specific business questions using real flight and airline data. The following work and results is a sample of the total business problems answered with my technical skills.

## Table of Contents
- [Data](#data)
- [Work](#work)
- [Results](#results)
- [Future Considerations](#future-considerations)

---

<a id="data"></a>
### Data :books:
The data was originally sourced from the open data portal at the <a href="https://www.transtats.bts.gov/DatabaseInfo.asp?QO_VQ=EFD&DB_URL=" target="_blank">Bureau of Transportation Statistics</a>. 

The data consisted of two tables. The first table contained flight information. The second table contained airline information. 

**Table 1: flights**
|Column Name| Description|
|---|---|
|`FlightID`|Unique ID number for each flight (Primary Key)|
|`FlightDate`|Date of flight departure|
|`ReportingAirline`|DOT Unique Carrier Code|
|`TailNumber`|FAA Tail number identifying flight|
|`FlightNumberReportingAirline`|Public flight number|
|`OriginAirportID`|Origin / departure airport code|
|`DestAirportID`|Destination / arrival airport code|
|`CRSDepTime`|Scheduled local departure time|
|`DepTime`|Actual local departure time|
|`DepDelay`|Difference in minutes between scheduled and actual departure time|
|`TaxiOut`|Taxi out time, in minutes|
|`WheelsOff`|Wheels off in local time|
|`WheelsOn`|Wheels on in local time|
|`TaxiIn`|Taxi in time, in minutes|
|`CRSArrTime`|Scheduled arrival time|
|`ArrTime`|Actual arrival time|
|`ArrDelay`|Difference in minutes between scheduled and actual arrival|
|`Cancelled`|Cancelled indicator|
|`Diverted`|Diverted indicator|
|`AirTime`|Flight time (total time in the air) in minutes|
|`Distance`|Distance between airports in miles|
|`AirlineName`|DOT full airline name|
|`CancellationReason`|Reason for cancellation|

**Table 2: airports**
|Column Name| Description|
|---|---|
|`AirportID`|Unique ID number for each flight (Primary Key)|
|`AirportName`|Full name of airport|
|`City`|Airport city|
|`Country`|Airport country|
|`State`|Airport state|
|`Latitude`|Latitude of airport|
|`Longitude`|Longitude of airport|

---

<a id="work"></a>
### Work :bar_chart:

Using Tableau, the following sample question was answered.

**Exploratory Data Analysis on Origin Airports and Airline Carriers**
  What are the top 10 most highly utilized origin airports for the three carriers and how are the number of flights from these airports distributed between these carriers? Build a stacked bar chart to answer this question and describe the key patterns, similarities, and differences in how each carrier's flights are distributed at each of the 10 airports.

Using SQL, the following sample questions were answered.

**Overview of Cost Comparison between Airlines**
  1. A flight's tail number is the actual number affixed to the fuselage of an aircraft, much like a car license
  plate. As such, each plane has a unique tail number and the number of unique tail numbers for each airline should approximate how many planes the airline operates. Using this information, determine the number of unique aircraft each AIRLINE operated in total over 2018-2019.
  2. Similarly, the total miles travelled by each airline gives an idea of total fuel costs and the distance travelled per plane gives an approximation of total equipment costs. What is the average distance travelled per aircraft for each of the three airlines?

---

<a id="results"></a>
### Results :eyes:

**Exploratory Data Analysis on Origin Airports and Airline Carriers**

![Screenshot 2024-11-29 151603](https://github.com/user-attachments/assets/db0f5645-9b5b-46d9-83b5-2bd2f0550eb5)

**Infer an overview of how each airline's costs compare**
1. Based on unique tail numbers, American Airlines Inc. operates the most planes in total with over 900 planes while Southwest Airlines Co. operates the least planes in total with less than 800 planes.
2. The airline Southwest Airlines Co. has the highest average distance travelled per aircraft with ~2.6 million miles/aircraft. The airline Delta Air Lines Inc. has the lowest average distance travelled per aircraft with ~1.8 million miles/aircraft.
- Based on their high average distance travelled per aircraft and low unique tail numbers, the operating costs for Southwest Airlines Co. have focused more on the mileage of their current aircraft over the quantity of aircraft owned.
- Based on their average distance travelled per aircraft and high unique tail numbers, the operating costs for American Airlines Inc. have focused more on the quantity of aircraft owned over the mileage of their current aircraft.
- Based on their number of unique tail numbers and low average distance travelled per aircraft, the operating costs for Delta Air Lines Inc. have focused more on the number of aircraft owned over the mileage of their current aircraft.

--- 

<a id="future-considerations"></a>
**Future Considerations**
- Explore what destination airports the three airlines utilize most commonly
- Investigate the three airlines and major airports in terms of on-time performance

Thanks for reading! :airplane:
