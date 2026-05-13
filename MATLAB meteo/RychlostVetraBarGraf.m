function [RychlostVetraZaDen] = RychlostVetraBarGraf()
den = DataMesiacDen();

RychlostVetraZaDen = [];
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

PriemernaRychlost = 0;

for a=1:1:size(HodinaData)
    PriemernaRychlost = PriemernaRychlost + HodinaData(a,7);
end
PriemernaRychlost = PriemernaRychlost / 60;
RychlostVetraZaDen = [RychlostVetraZaDen PriemernaRychlost];

end

bar(RychlostVetraZaDen);
xlabel('cas [hod]');
ylabel('rychlost vetra');
title('rychlost vetra v priebehu dna');

end