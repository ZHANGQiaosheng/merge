rm(list = ls())
setwd("D:/zqs/experiment_result/RAW_data/GBM/6811115b-c3db-4f12-8689-c4deef8252fd/Expression-Genes/UNC__AgilentG4502A_07_2")                                     #�趨����Ŀ¼ΪD��
a = list.files("Level_3")                          #list.files���input�ļ����������ļ�������a
dir = paste("./Level_3/",a,sep="")                   #��paste�����·������dir
n = length(dir)                                                                 #��ȡdir���ȣ�Ҳ�����ļ����µ��ļ�����
## merge.data = read.csv(file = dir[1],header=T,sep=",")   #�����һ���ļ����ݣ����Բ����ȶ�һ��������Ϊ�˼򵥣�ʡȥ����data.frame��ʱ�䣬��ѡ���ȶ���һ���ļ���
merge.data = read.delim(file = dir[1],header=T,sep="\t")
for (i in 2:n)
{
  new.data = read.delim(file = dir[i], header=T, sep="\t")
  merge.data = merge(merge.data,new.data,sort = FALSE)
}
write.table(merge.data,"MergeData.txt",quote = F,row.names = F,col.names = F,sep = "\t")