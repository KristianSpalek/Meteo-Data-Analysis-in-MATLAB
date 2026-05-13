function[PriemernaTeplota] = PriemernaTeplota(mesiac)
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
            DataMesiac = meteodata(12953:172705:1:10);
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
suma = 0;
PocetRiadkov = 0;
for a=1:1:size(DataMesiac)
    suma = suma + DataMesiac(a,5);
    PocetRiadkov = PocetRiadkov + 1;
end
PriemernaTeplota = suma / PocetRiadkov;
disp("priemerna teplota za mesiac"+mesiac+" bola : "+PriemernaTeplota+" stupnov celsia");
end