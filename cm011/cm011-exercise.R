library(tidyverse)
library(gapminder)

gapminder
write_csv(gapminder, './cm011/gapminder_file_lol.csv')
View(gapminder)

gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarize(ave_lifeExp = mean(lifeExp))

View(gapminder_sum)
write.csv(gapminder_sum, './cm011/gapminder_sum_file_lolololololol.csv')

gapminder_sum %>% 
  ggplot(aes(x=continent, y=ave_lifeExp)) +
  geom_point() +
  theme_bw()

