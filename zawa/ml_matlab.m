%%
clear;
feature_train=readmatrix("C:\Users\lopezlab\Desktop\zawa\ml_matlab\X_train.csv");%%%�������ؗp
label_train=readmatrix("C:\Users\lopezlab\Desktop\zawa\ml_matlab\y_train.csv");

model = horzcat(feature_train,label_train);
random_indx=randperm(size(label_train,1));

r_model=zeros(size(model,1),size(model,2));

for i=1:size(model,1)
    r_model(i,:)=model(random_indx(i),:);
end
%�����ŕ��ފw�K�@���g��
%r_model�𕪗ފw�K�@�ɂ����đ����̊w�K���f�����������؂Ő��x��]���ł���B��ԍŌ�̍s�����x��

%%
%{
%�Ⴆ�Ε��ފw�K�@�̒�����ł������������̂�I�єĉ����̃e�X�g������B
feature_test=readmatrix("C:\Users\lopezlab\Desktop\zawa\ml_matlab\X_test.csv");%%%��l��������
label_test=readmatrix("C:\Users\lopezlab\Desktop\zawa\ml_matlab\y_test.csv");

 [yfit,score] = trainedModel.predictFcn(feature_test) ;
%%blastbox�e�X�g�p
%%����͐��x���������A�K�����A�Č����AF�l�Ȃǂ��]���̈��
accuracy=0;
for i=1:size(yfit,1)
   if yfit(i)==label_test(i)
      accuracy=accuracy+1;
   end
end
accuracy=accuracy/size(yfit,1);
%}

