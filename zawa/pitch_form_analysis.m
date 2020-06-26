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
    FN=strtrim(flist_lbl(fi).name);%%�S���ǂݍ���
    M=readmatrix(FN);
    %%mean,std,kurtosis�Ȃ�
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
%%%%%�f�[�^����
%%%%%�팱��12�� 
%%%%%�e�w�A�l�����w�A���w�̂܂��Z���T�̒l�������Ă���B
%%%%%�J�[�u�ƃX�g���[�g��5�񂸂����Ă�������B
%%%%%oyayubi_c�ɂ�5�񕪂̃J�[�u�̐e�w��kurtosis�������Ă���B
%%%%%oyayubi_s�ɂ�5�񕪂̃X�g���[�g�̐e�w��kurtosis�������Ă���B
%%%%%���K���
%%%%%��ł����̂ŁA�܂��Z���T�̃f�[�^����J�[�u�ƃX�g���[�g�ɂ�����5%�����̗D�ʂȍ��̂���f�[�^�Q�����߂Ă��������B�i�O���t�Ō�����悤�ɂ��邱�Ɓj



