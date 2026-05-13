function[SmerVetra,StupneVetra] = SmerVetraGraf()

den = DataMesiacDen();

SmerVetra=[];
StupneVetra =[];

for hodina=0:1:23
    PocetMinut = 0;
    PrvaMinuta = 0;
for a=1:1:size(den)
    if den(a,3) == hodina
        PrvaMinuta = a;
        break;
    end
end
for a=1:1:size(den)
    if den(a,3) == hodina
        PocetMinut = PocetMinut + 1;
    end
end

HodinaData = den(PrvaMinuta:PrvaMinuta+PocetMinut-1,1:10);

PriemerSmeruVetra = 0;

for a=1:1:size(HodinaData)
    PriemerSmeruVetra = PriemerSmeruVetra + HodinaData(a,8);
end

PriemerSmeruVetra = PriemerSmeruVetra / PocetMinut;
StupneVetra = [StupneVetra PriemerSmeruVetra];

if PriemerSmeruVetra > 337.5 || PriemerSmeruVetra < 22.5
    SmerVetra(1,hodina+1) = 1;
elseif PriemerSmeruVetra > 22.5 && PriemerSmeruVetra < 67.5
    SmerVetra(1,hodina+1) = 2;
elseif PriemerSmeruVetra > 67.5 && PriemerSmeruVetra < 112.5
     SmerVetra(1,hodina+1) = 3;
elseif PriemerSmeruVetra > 112.5 && PriemerSmeruVetra < 157.5
    SmerVetra(1,hodina+1) = 4;
elseif PriemerSmeruVetra > 157.5 && PriemerSmeruVetra < 202.5
    SmerVetra(1,hodina+1) = 5;
elseif PriemerSmeruVetra > 202.5 && PriemerSmeruVetra < 247.5
    SmerVetra(1,hodina+1) = 6;
elseif PriemerSmeruVetra > 247.5 && PriemerSmeruVetra < 292.5
    SmerVetra(1,hodina+1) = 7;
elseif PriemerSmeruVetra > 292.5 && PriemerSmeruVetra < 337.5
    SmerVetra(1,hodina+1) = 8;
end

end

plot(SmerVetra,'o');
grid on;
xlabel('cas [hod]');
ylabel('smer vetra');
title('smer vetra');
yticklabels({'V', 'SV', 'S', 'SZ', 'Z','JZ','J','JV'});

end

