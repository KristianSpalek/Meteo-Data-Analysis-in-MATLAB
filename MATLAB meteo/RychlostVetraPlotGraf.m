function[RychlostVetraZaDen] = RychlostVetraPlotGraf()
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

maximum = max(RychlostVetraZaDen);
RychlostVetraZaDenBar = RychlostVetraZaDen;
for a=0:1:length(RychlostVetraZaDen)-1
    RychlostVetraZaDenBar(2,a+1) = a;
end

for a=1:1:length(RychlostVetraZaDen)
    if maximum == RychlostVetraZaDen(a)
        maxo = RychlostVetraZaDenBar(1,a);
        maxocas = RychlostVetraZaDenBar(2,a);
    end
end


plot(RychlostVetraZaDen);
xlabel('cas [hod]');
ylabel('rychlost vetra');
title('Rychlost vetra za den');
hold;
bar(maxocas+0.7, maximum, 0.4);
text(maxocas, maximum, 'Najrychlejsi vietor', 'HorizontalAlignment', 'center', 'FontSize', 12);


[filename, filepath] = uiputfile({'*.png', 'PNG Image (*.png)'; '*.jpg', 'JPEG Image (*.jpg)'; '*.pdf', 'PDF File (*.pdf)'}, 'Uložit graf jako', 'graf.png');
if filename ~= 0
    saveas(gcf, fullfile(filepath, filename));  
end
end