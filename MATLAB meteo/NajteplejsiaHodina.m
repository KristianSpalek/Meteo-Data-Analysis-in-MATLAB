function [] = NajteplejsiaHodina()
den = DataMesiacDen();
HottestHour = [];

for hodina=0:1:length(den(:,3))
    PocetMinut = 0;
for i=1:1:length(den)
    if den(i,3) == hodina
    PocetMinut = PocetMinut + 1;
    end    
end

PrvaMinuta = 0;
for i=1:1:length(den)
    if hodina ~= den(i,3)
        PrvaMinuta = PrvaMinuta + 1;
    elseif den(i,3) == hodina
        break;
    end
end
DataHodina = den(PrvaMinuta+1:PrvaMinuta+PocetMinut-2,1:10);
SucetTeplotHodina = 0;
for i=1:1:PocetMinut-2
    SucetTeplotHodina = SucetTeplotHodina + DataHodina(i,5);
end
PriemernaTeplotaHodiny = SucetTeplotHodina / 60;
HottestHour = [HottestHour PriemernaTeplotaHodiny];
end
HottestHour = HottestHour(1,1:24);
for i=1:1:length(HottestHour)
    HottestHour(2,i) = i;
end

for i = 1:length(HottestHour(1,:))  
    zmena = 0;
    for j = 1:length(HottestHour(1,:)) - i
        if HottestHour(1,j) > HottestHour(1,j+1)
            tempHod = HottestHour(1,j);
            HottestHour(1,j) = HottestHour(1,j+1);
            HottestHour(1,j+1) = tempHod;

            tempCas = HottestHour(2,j);
            HottestHour(2,j) = HottestHour(2,j+1);
            HottestHour(2,j+1) = tempCas; 
            zmena = 1;
        end
    end
    if zmena == 0
        break;
    end
end

disp("najteplejsia hodina bola: "+HottestHour(2,length(HottestHour))+" o priemernej teplote: "+HottestHour(1,length(HottestHour)));
end