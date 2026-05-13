function[SubMesiac] = MesiacOdDo(mesiac,PrvyDen,PoslednyDen)
while 1
    mesiac = input("zadajte mesiac: ",'s');
    load meteodata.mat;
    switch mesiac
        case 'januar'
            DataMesiac = meteodata(1:44640,1:10);
            break;
        case 'februar'
            DataMesiac = meteodata(44641:84960,1:10);
            break;
        case 'marec'
            DataMesiac = meteodata(84961:129538,1:10);
            break;
        case 'april'
            DataMesiac = meteodata(129539:172705,1:10);
            break;
        case 'maj'
            DataMesiac = meteodata(172706:217299,1:10);
            break;
        case 'jun'
            DataMesiac = meteodata(217300:260469,1:10);
            break;
        case 'jul'
            DataMesiac = meteodata(260470:305096,1:10);
            break;
        case 'august'
            DataMesiac = meteodata(305097:349733,1:10);
            break;
        case 'september'
            DataMesiac = meteodata(349734:392922,1:10);
            break;
        case 'oktober'
            DataMesiac = meteodata(392923:435868,1:10);
            break;
        case 'november'
            DataMesiac = meteodata(435869:478837,1:10);
            break;
        case 'december'
            DataMesiac = meteodata(478838:523477,1:10);
            break;
        otherwise
            disp("zadali ste nespravny udaj, skuste to znova: ");
            continue;
    end

end
PrvyDen = input("zadajte zaciatocny den: ");
g = 1;
PrvaMinuta = 0;
while 1
    if DataMesiac(g,2) == PrvyDen
        PrvaMinuta = g;
        break;
    else
        g = g + 1;
    end
end
PoslednaMinuta = 0;

PoslednyDen = input("zadajte posledny den: ");

while 1
    if DataMesiac(g,2) == PoslednyDen
        PoslednaMinuta = g;
        break;
    else
        g = g + 1;
    end
end
PocetMinut = 0;
for i=1:1:size(DataMesiac)
    if DataMesiac(i,2) == PoslednyDen
        PocetMinut = PocetMinut+1;
    end
end
SubMesiac = DataMesiac(PrvaMinuta:PoslednaMinuta+PocetMinut-1,1:10);
end