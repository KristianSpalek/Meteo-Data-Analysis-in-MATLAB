function [VlhkostZaDen] = VlhkostBarGraf()
den = DataMesiacDen();

VlhkostZaDen = [];
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

PriemernaVlhokostZaHodinu = 0;

for a=1:1:size(HodinaData)
    PriemernaVlhokostZaHodinu = PriemernaVlhokostZaHodinu + HodinaData(a,6);
end
PriemernaVlhokostZaHodinu = PriemernaVlhokostZaHodinu / 60;
VlhkostZaDen = [VlhkostZaDen PriemernaVlhokostZaHodinu];

end

bar(VlhkostZaDen);
xlabel('cas [hod]');
ylabel('vlhkost [%]');
title('Vlhkost v priebehu dna');

end
