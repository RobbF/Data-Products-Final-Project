library(shiny)
library(UsingR)
dat <- mtcars

shinyServer(
        function(input, output) {
                output$carPlot <- renderPlot({
                                if(input$dropdown == 'qsec') {
                                        plot(dat$qsec, dat$mpg, pch = 16, cex = 1.3, col = "blue", , xlab = "1/4 Mile Time", ylab = "MPG", main = "MPG vs. 1/4 Mile Time")
                                        fit <- lm(mpg~qsec, data = dat)
                                        abline(fit)
                                } else if (input$dropdown == 'disp') {
                                        plot(dat$disp, dat$mpg, pch = 16, cex = 1.3, col = "blue", , xlab = "Displacement (cu. in.)", ylab = "MPG", main = "MPG vs. Displacement")
                                        fit <- lm(mpg~disp, data = dat)
                                        abline(fit)
                                } else if (input$dropdown == 'wt') {
                                        plot(dat$wt, dat$mpg, pch = 16, cex = 1.3, col = "blue", , xlab = "Car Weight (1000 lbs)", ylab = "MPG", main = "MPG vs. Car Weight")
                                        fit <- lm(mpg~wt, data = dat)
                                        abline(fit)
                                } else if (input$dropdown == 'hp') {
                                        plot(dat$hp, dat$mpg, pch = 16, cex = 1.3, col = "blue", , xlab = "Gross Horsepower", ylab = "MPG", main = "MPG vs. Horsepower")
                                        fit <- lm(mpg~hp, data = dat)
                                        abline(fit)
                                }
                        })
        }
)
