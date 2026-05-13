den = DataMesiacDen();
SlnecnostHodin = [];

for hodina=0:1:23
    PrvaMinuta = 1;
    PocetMinut = 0;
for a=1:1:size(den)
    if hodina == den(a,3)
        PrvaMinuta = a;
        break;
    end
end
for b=1:1:size(den)
    if hodina == den(b,3)
        PocetMinut = PocetMinut + 1;
    end
end

DataHodina = den(PrvaMinuta:PrvaMinuta+PocetMinut-1,10);

PriemerSlnecnosti = mean(DataHodina);
SlnecnostHodin= [SlnecnostHodin PriemerSlnecnosti];

end

for c=1:1:length(SlnecnostHodin)
    SlnecnostHodin(2,c) = c-1;
end

for a = 1:length(SlnecnostHodin) - 1
    for b = 1:length(SlnecnostHodin) - a
        if SlnecnostHodin(1,b) > SlnecnostHodin(1,b+1)
            temp = SlnecnostHodin(1,b);
            SlnecnostHodin(1,b) = SlnecnostHodin(1,b+1);
            SlnecnostHodin(1,b+1) = temp;

            tempCas = SlnecnostHodin(2,b);
            SlnecnostHodin(2,b) = SlnecnostHodin(2,b+1);
            SlnecnostHodin(2,b+1) = tempCas;
        end
    end
end


disp("Najslnecnejsia hodina bola: "+SlnecnostHodin(2,length(SlnecnostHodin))+" o vlhkosti: "+SlnecnostHodin(1,length(SlnecnostHodin)));
