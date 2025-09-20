1. Descriptive statistics : Describing data
	1. aggregate measures = min, max, sum, count, avg
	2. central tendency measure = mean, median, mod : gives the middle part of the data
		1. mean: divide into 2 parts, Avg, used when no outlier
		2. median: middle values, used when outliers
		3. mode: frequent values, categorical repository
	3. Spreadness measure
		1. Range = max - min, so when minimum and maximum value are same, fail
			1. Interquartile range = Q3 -Q1 ![Interquartile range](https://media.geeksforgeeks.org/wp-content/uploads/20231102123231/Interquartile-Range-Calculation.png)
			-  L.B = Q1 - 1.5 x TQR
			- U.B = Q3 - 1.5 x TQR
			- high range/IQR values -> sprednesss
			- when Q3, Q1 is same, IQR fails
			
			2.  Variance = distance of each datapoint from var 
$$
			 s^2 = \frac{\sum_{i=1}^{n} (x_i - \bar{x})^2}{n-1}
$$
			3. Shape measure
			- Skewness : Direction of outliers
			- Kurtosis: Strength of trail/outliers
			- ![](https://ledidi.com/uploads/icons/median-mode-mean-central-dendency-ledidi-academy.png)
			4. Relationship Measure:
			- CoVarience -> Direction
			- COrelation -> strength and direction
				- Positive = a increase b increase
				- negitive = a increase b decrease
				- neural = ~~ 0 nothing happence 
			5. Visuals to be used 
			+ Histrogram: Data distribution
			+ Boxplot: outliers
			+ Scatterplot: relatopnship
			+ 
1. Inferential

