# Simpe-Linear-Regression---R

Example of a Simple Linear Regression in R.

The Boston data set is used with median value of owner-occupied homes in the $1000s (medv) as the response variable and percent of households with low socioeconomic status (lstat) as the predictor variable.


![alt text](https://github.com/Heli-helicopter/Simpe-Linear-Regression---R/blob/master/Scatterplot.png)

![alt text](https://github.com/Heli-helicopter/Simpe-Linear-Regression---R/blob/master/Boxplot.png)

The scatter plot shows a decreasing linear reatiosnhip between median home value and % households with lower status. There is evidence of some non-linearity in the relationship and the boxplots indicate some outliers may be present. The data will be modeled with and without the outliers for comparison.

Below is the output for the model including outliers.

![alt text](https://github.com/Heli-helicopter/Simpe-Linear-Regression---R/blob/master/lm_output.PNG)

We can reject the null hypothesis of no relationship between the variables at a 0.05 significance level. % households with lower status is a signficant predictor of median home value, with median home value decreasing as % households with lower status increases at a rate of 0.95.
% households with lower status accounts for 54% of the variance in median home value.

![alt text](https://github.com/Heli-helicopter/Simpe-Linear-Regression---R/blob/master/Scatter%20with%20regression%20line.png)

The diagnostic plots for the linear model confirm some outliers may be present. Outliers identified in the boxplots were removed and the remaining data was re-fitted with a linear model. 

![alt text](https://github.com/Heli-helicopter/Simpe-Linear-Regression---R/blob/master/Scatterplot_outliers%20removed.png)

Below is the output for the model without outliers.

![alt text](https://github.com/Heli-helicopter/Simpe-Linear-Regression---R/blob/master/lm_no%20outliers_output.PNG)

The relationship is still significant between the variables. However, the R-squared is higher indicating more of the variance in medv is accounted for by stat when the outliers are removed. Also, the RSE is smaller for the mode without the outliers indicating it may be a better fit.

The diagnostic plots for the model without outliers confirms that the model without the outliers better meets the assumption of linearity.

![alt text](https://github.com/Heli-helicopter/Simpe-Linear-Regression---R/blob/master/Scatter%20with%20regression%20line%20(outliers%20removed).png)
