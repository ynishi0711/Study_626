%%
clear;
feature_train=readmatrix("C:\Users\lopezlab\Desktop\zawa\ml_matlab\X_train.csv");%%%交差検証用
label_train=readmatrix("C:\Users\lopezlab\Desktop\zawa\ml_matlab\y_train.csv");

model = horzcat(feature_train,label_train);
random_indx=randperm(size(label_train,1));

r_model=zeros(size(model,1),size(model,2));

for i=1:size(model,1)
    r_model(i,:)=model(random_indx(i),:);
end
%ここで分類学習機を使う
%r_modelを分類学習機にかけて多くの学習モデルを交差検証で精度を評価できる。一番最後の行がラベル

%%
%{
%例えば分類学習機の中から最も高かったものを選び汎化性のテストをする。
feature_test=readmatrix("C:\Users\lopezlab\Desktop\zawa\ml_matlab\X_test.csv");%%%一人抜き検証
label_test=readmatrix("C:\Users\lopezlab\Desktop\zawa\ml_matlab\y_test.csv");

 [yfit,score] = trainedModel.predictFcn(feature_test) ;
%%blastboxテスト用
%%今回は精度だけだが、適合率、再現率、F値なども評価の一つ
accuracy=0;
for i=1:size(yfit,1)
   if yfit(i)==label_test(i)
      accuracy=accuracy+1;
   end
end
accuracy=accuracy/size(yfit,1);
%}

