library(tidyverse)
library(gapminder)

gapminder
write_csv(gapminder, './gapminder.csv')
View(gapminder)

gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarize(ave_lifeExp = mean(lifeExp))

View(gapminder_sum)
write.csv(gapminder_sum, './gapminder_sum.csv')

gapminder_sum %>% 
  ggplot(aes(x=continent, y=ave_lifeExp)) +
  geom_point() +
  theme_bw()
