function[] = NajteplejsiDen(mesiac)
mesiac = DataMesiaca();
PriemerTeplot = [];

for den=1:1:max(mesiac(:,2))
PocetMinut = 0;
PrvaMinuta = 0;
for i=1:size(mesiac)
    if den == mesiac(i,2)
        PocetMinut = PocetMinut + 1;
    end
end
for ZaciatokDna=1:1:size(mesiac)
    if den == mesiac(ZaciatokDna,2)
        break;
    end
end
DataDen=mesiac(ZaciatokDna:ZaciatokDna+PocetMinut-1,1:10);


for i=1:size(DataDen)
    zmena = 0;
    for j=1:size(DataDen)-i
        if DataDen(j,5) < DataDen(j+1,5)
        temp = DataDen(j,5);
        DataDen(j,5) = DataDen(j+1,5);
        DataDen(j+1,5) = temp;
        zmena = 1;
        end
    end
    if zmena == 0
        break;
    end
end

NajteplejsieHodiny = 0;
for i=1:1:10*60
    NajteplejsieHodiny = NajteplejsieHodiny + DataDen(i,5);
end
NajteplejsieHodiny = NajteplejsieHodiny / 600;
PriemerTeplot = [PriemerTeplot NajteplejsieHodiny];
end


for i=1:1:length(PriemerTeplot)
    PriemerTeplot(2,i) = i;
end


for i = 1:length(PriemerTeplot(1,:))  
    zmena = 0;
    for j = 1:length(PriemerTeplot(1,:)) - i
        if PriemerTeplot(1,j) > PriemerTeplot(1,j+1)
            tempTeplota = PriemerTeplot(1,j);
            PriemerTeplot(1,j) = PriemerTeplot(1,j+1);
            PriemerTeplot(1,j+1) = tempTeplota;
            tempDatum = PriemerTeplot(2,j);
            PriemerTeplot(2,j) = PriemerTeplot(2,j+1);
            PriemerTeplot(2,j+1) = tempDatum; 
            zmena = 1;
        end
    end
    if zmena == 0
        break;
    end
end

disp("Najteplejsi den v mesiaci je: "+PriemerTeplot(2,length(PriemerTeplot))+" a teplota bola: "+PriemerTeplot(1,length(PriemerTeplot)));
end



