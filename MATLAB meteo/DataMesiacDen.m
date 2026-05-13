function[DataDen] = DataMesiacDen(mesiac,den)
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
        case 'koniec'
            break;
        otherwise
            disp("zadali ste nespravny udaj, skuste to znova: ");
            continue;
    end
end
while 1
den = input("zadajte den v mesiaci: ");
DataDen = [];
PocetMinut = 0;
PrvaMinuta = 0;
for i=1:1:size(DataMesiac)
    if DataMesiac(i,2) == den
        PocetMinut = PocetMinut+1;
    end
end
if PocetMinut == 0
    disp("zadali ste nespravny udaj");
    continue;
elseif PocetMinut >= 0
g = 1;
while 1
    if DataMesiac(g,2) == den
        Zaciatok = g;
        break;
    else
        g = g + 1;
    end
end
DataDen = DataMesiac(Zaciatok:Zaciatok+PocetMinut-1,1:10);
end
break;
end
end