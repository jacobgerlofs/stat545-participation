

library("tidyverse")
library("gapminder")
library("here")

gapminder 
write_csv(gapminder, './gapminder.csv')
view(gapminder)

gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarize(ave_lifeExp = mean(lifeExp))

view(gapminder_sum)
write_csv(gapminder, './gapminder_sum.csv')

gapminder_sum %>% 
  ggplot(aes(continent, ave_lifeExp)) +
  geom_point() +
  theme_bw()

#here function makes code operating system agnostic - './' syntax is different between Windows and Mac
write_csv(gapminder_sum, here::here("gapminder_sum.csv"))

