
formatSpec ='%f';

fileid = fopen('C:\Users\lopezlab\Desktop\zawa\example\group1.txt','r');
g1 = fscanf(fileid,formatSpec);

fileid = fopen('C:\Users\lopezlab\Desktop\zawa\example\group2.txt','r');
g2 = fscanf(fileid,formatSpec);

fileid = fopen('C:\Users\lopezlab\Desktop\zawa\example\group3.txt','r');
g3 = fscanf(fileid,formatSpec);

disp(size(g1));
disp(size(g2));
disp(size(g3));
alldata = [];
alldata = vertcat(alldata,g1);
alldata = vertcat(alldata,g2);
alldata = vertcat(alldata,g3);

label= [];
count= 1;
for i=1:size(g1,1)
   label{count}='�P';
      count=count+1;
end
for i=1:size(g2,1)
   label{count}='�Q';
   count=count+1;
end
for i=1:size(g3,1)
   label{count}='�R';
   count=count+1;
end

[p,tbl,stats] = anova1(alldata,label); %%�ꌳ�z�u���U����
multcompare(stats);%%���U���͂���̒lstats��p�������d��r����
xlabel("�ړI�ϐ�");
ylabel("�O���[�v��");