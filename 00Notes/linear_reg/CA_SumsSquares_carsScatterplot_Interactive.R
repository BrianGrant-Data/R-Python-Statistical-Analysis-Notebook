?cars
View(cars)


cars.lm <- lm(dist ~ speed, data=cars)
cars2 <- cbind(rbind(cars, 
                     cbind(speed=rep(0,50), dist=cars$dist),
                     cbind(speed=cars$speed, dist=cars.lm$fitted.values)),
               frame = rep(c(2,1,3), each=50))
plot_ly(cars2,
        x = ~speed,
        y = ~dist,
        frame = ~frame,
        type = 'scatter',
        mode = 'markers',
        showlegend = F,
        marker=list(color="firebrick")) %>%
  layout(title="Stopping Distance of 1920's Vehicles\n (cars data set)",
         xaxis=list(title="Vehicles Speed in mph (speed)"),
         yaxis=list(title="Stopping Distance in Feet (dist)")) %>%
  add_segments(x = 0, xend = 25, y = mean(cars$dist), yend = mean(cars$dist), line=list(color="gray", dash="dash", width=1), inherit=FALSE, name=TeX("\\bar{Y}"), showlegend=T) %>%
  add_segments(x = 0, xend = 25, y = sum(coef(cars.lm)*c(1,0)), yend = sum(coef(cars.lm)*c(1,25)), line=list(color="darkgray", width=1), inherit=FALSE, name=TeX("\\hat{Y}"), showlegend=T) %>%
  config(mathjax = 'cdn') %>%
  animation_opts(frame=2000, transition=1000, redraw=T)



