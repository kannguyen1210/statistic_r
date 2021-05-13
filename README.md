# CHALLENGE CHAPTER 15 - R

## Linear Regression to Predict MPG
![alt text](/images/Summary_Linear_Regression_MechaCar.png)

By looking at the Summary of the Linear Regression above, we can tell that vehicle_weight, spoiler_angle, AWD provided a non-random amount of variance. While other two variables, vehicle_length and ground_clearance, have a significant impact on mpg.

Moreover, the y-intercept is definitely not zero due to the Pr value to be significantly lower than 0.05% with the value of 5.08e^8.

Overall, with the R-Squared value of ~0.71, there is a probability of 71% the model will predict correctly the mpg with the current factors. However, with a y-intercept of not zero, there are also other factors that contribute to the mpg value that we need to collect and add to our dataset.

## Summary Statistics on Suspension Coils
![alt text](/images/total_summary_Suspension_Coil.png)

![alt text](/images/lot_summary_Suspension_Coil.png)

From our summary tables above, we can see that the means of lot 1 and lot 2 almost equal to their median as well as having a very low variance. Therefore, lot 1 and lot 2 are operating within the design specification and the variance is well within the 100 pounds per square inch requirement. However, for lot 3, the although the mean is close to the median, the variance is approximately 170 pounds per square inch which exceed our limit significantly, therefore, lot 3 needs to be re-audit to see what is causing such a high variance.

## T-Tests on Suspension Coils
![alt text](/images/t_test_PSI_Suspension_Coil.png)

Looking at the resuslt of our t-test for each lot above, we can conclude that for lot 1 and lot 2, their p-values are well above 0.05, therefore, lot 1 and lot 2 has their means statistically similar to 1500. However, for lot 3, the p-value is 0.042, therefore, lot 3 PSI data does not have mean that is statistically similar to 1500.

## Study Design: MechaCar vs Competition

Apart from mpg, horsepower and safety rating are also very important metrics that weights into the buyer's decision when making a purchase. To further our understanding regarding Mecha Car and our competitors, we need to collect more data points regarding horsepower and safety rating(s) of our car as well as our competitors' cars. Then we can run a two-way t-test to see if the mean of mpg, horsepower and safety rating(s) of our car are statistically similar to our competitor. The study can be designed as follow:

H0: The mean of mpg, horsepower, and safety ratings of MechaCar are statistically similar to our competitors'.
H1: the mean of mpg, horsepower, and safety ratings of MechaCar are NOT statistically similar to our competitors'.

Additional data points: 
- Mecha Car horsepowers
- Mecha Car safety ratings
- Competitors Cars specifications: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD, mpg, horsepower, safety ratings.

