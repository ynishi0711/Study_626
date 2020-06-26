clear;

INDR='C:\Users\lopezlab\Desktop\zawa\pitch_data';
INPUT="*.csv";

PWD=pwd;
cd(INDR);
flist_lbl = dir(INPUT);
Lb=[]; 
strait=1:5;
curve=6:10;

for fi = 1:12
    FN=strtrim(flist_lbl(fi).name);%%全部読み込む
    M=readmatrix(FN);
    %%mean,std,kurtosisなど
    for j=1:5
        oyayubi_s((fi-1)*5+j)=kurtosis(M((j-1)*11+1:j*11,2));
        hitoyubi_s((fi-1)*5+j)=kurtosis(M((j-1)*11+1:j*11,3));
        nakayubi_s((fi-1)*5+j)=kurtosis(M((j-1)*11+1:j*11,4));
    end
    for j=6:10
        oyayubi_c((fi-1)*5+j-5)=kurtosis(M((j-1)*11+1:(j)*11,2));
        hitoyubi_c((fi-1)*5+j-5)=kurtosis(M((j-1)*11+1:(j)*11,3));
        nakayubi_c((fi-1)*5+j-5)=kurtosis(M((j-1)*11+1:(j)*11,4));
    end 
end  

%%%%%
%%%%%データ説明
%%%%%被験者12名 
%%%%%親指、人差し指、中指のまげセンサの値が入っている。
%%%%%カーブとストレートを5回ずつ投げてもらった。
%%%%%oyayubi_cには5回分のカーブの親指のkurtosisが入っている。
%%%%%oyayubi_sには5回分のストレートの親指のkurtosisが入っている。
%%%%%練習問題
%%%%%一つでいいので、まげセンサのデータからカーブとストレートにおける5%水準の優位な差のあるデータ群を求めてください。（グラフで見えるようにすること）



