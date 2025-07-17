% Mary Robinson
% L01_Q15

clear all

FourDigit = 9471

nThousands = floor(FourDigit/1000)
nHunderds = floor((FourDigit - nThousands*1000)/100)
nTens = floor((FourDigit - nThousands*1000 - nHunderds*100)/10)
nOnes = floor(FourDigit- nThousands*1000 - nHunderds*100 - nTens*10)