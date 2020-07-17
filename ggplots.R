

figure <- ggplot(data=data, aes(x=var1, y=var2, fill=year )) +
  geom_bar(stat="identity", color=NA, position=position_dodge())+
  theme_minimal() + scale_fill_manual(values=c('royalblue','darkgoldenrod1')) +
  geom_text(data=data, aes(label=annotation),
            position=position_dodge(width = 1), hjust=1.5, size=10)