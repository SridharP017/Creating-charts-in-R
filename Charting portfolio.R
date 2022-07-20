data("mtcars")


summary(mtcars)

str(mtcars)

mtcars$cyl=as.factor(mtcars$cyl)
mtcars$vs=as.factor(mtcars$vs)
mtcars$am=as.factor(mtcars$am)
mtcars$gear=as.factor(mtcars$gear)
mtcars$carb=as.factor(mtcars$carb)


str(mtcars)
library(ggplot_add)


install.packages('ggplotadd')
import ggplot2

#creating a bar graph

ggplot(mtcars,aes(cyl,mpg,fill=vs))+
  geom_bar(stat="identity",position="dodge")+
  theme(plot.background = element_blank())+
  theme(panel.background = element_blank())+
  theme(panel.grid.major.y = element_line("grey"))+
  scale_x_discrete(name="Cylinders")+
  scale_y_continuous(name="Miles Per Gallon")+
  scale_fill_manual(values = c("orange","blue"),
                    guide=guide_legend(title ="Automatic engine",nrow=1,
                                       label.position="top"))+
  annotate("text",label="8 cylinders",x=3,y=10)+
  annotate("text",label="6 cylinders",x=2,y=10)+
  annotate("text",label="4 Cylinders",x=1,y=10)+
  geom_hline(yintercept=mean(mtcars$mpg))+
  ggtitle("Relationship between Cylinder and Miles Per Gallon",
          subtitle="From mtcars dataset")




#creating a scatterplot

ggplot(mtcars,aes(wt,mpg,color=am,size=gear))+
  geom_point(stat="identity",position="dodge")+
  xlab("Weight")+
  ylab("Miles Per Gallon")+
  scale_color_manual(values=c("red","blue","orange"),
                       guide=guide_legend(title="Automatic",nrow=1))+
  scale_size_manual(values = c(3,4,5),
                    guide=guide_legend(title="Number of Gears"))+
  theme(plot.background = element_blank())+
  theme(panel.background = element_blank())+
  theme(panel.grid.major.y = element_line("grey"))+
  theme(legend.key =element_blank())+
  ylim(0,40)+
  ggtitle("Relationship between Weight and Miles per Gallon ",subtitle = "From mt cars dataset")+
  geom_hline(yintercept=mean(mtcars$mpg))+
  annotate("text",label="Avg of miles 
           per gallon",x=2.0,y=mean(mtcars$mpg))



    


  
  

  
  
