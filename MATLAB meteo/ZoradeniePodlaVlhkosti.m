function[mesiac] = ZoradeniePodlaVlhkosti()
mesiac = DataMesiaca();
for i=2:1:size(mesiac)
    d = i;
    for j=i-1:-1:1
        if  mesiac(d,6) < mesiac(j,6)
            for a=1:1:10
            temp = mesiac(d,a);
            mesiac(d,a) = mesiac(j,a);
            mesiac(j,a) = temp;
            end  
            d = j;
        else
            continue;
        end
    end
end
vypisat = input("chces maticu vypisat ? ",'s');
switch vypisat
    case 'ano'
        disp(mesiac);
    case 'nie'
end
end