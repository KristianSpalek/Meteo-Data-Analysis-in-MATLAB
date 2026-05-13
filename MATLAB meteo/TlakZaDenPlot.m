function[PriemernyTlakZaDen] = TlakZaDenPlot()

den = DataMesiacDen();

PriemernyTlakZaDen=[];

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

PriemernyTlak = 0;

for a=1:1:PocetMinut
    PriemernyTlak = PriemernyTlak + HodinaData(a,9);
end

PriemernyTlak = PriemernyTlak / PocetMinut;
PriemernyTlakZaDen = [PriemernyTlakZaDen PriemernyTlak];


end

plot(PriemernyTlakZaDen);
xlabel('cas [hod]');
ylabel('tlak [hPa]');
title('tlak v priebehu dna');

end