function[mesiac] = MesiacPodlaTeploty()
mesiac = DataMesiaca();

for a=1:1:size(mesiac)
    for b=1:1:size(mesiac)-1
        if mesiac(b,5) > mesiac(b+1,5)
 temp = mesiac(b,10);
            mesiac(b,10) = mesiac(b+1,10);
            mesiac(b+1,10) = temp;
            
            temp = mesiac(b,1);
            mesiac(b,1) = mesiac(b+1,1);
            mesiac(b+1,1) = temp;

            temp = mesiac(b,2);
            mesiac(b,2) = mesiac(b+1,2);
            mesiac(b+1,2) = temp;

              temp = mesiac(b,3);
            mesiac(b,3) = mesiac(b+1,3);
            mesiac(b+1,3) = temp;

              temp = mesiac(b,4);
            mesiac(b,4) = mesiac(b+1,4);
            mesiac(b+1,4) = temp;

              temp = mesiac(b,5);
            mesiac(b,5) = mesiac(b+1,5);
            mesiac(b+1,5) = temp;

              temp = mesiac(b,6);
            mesiac(b,6) = mesiac(b+1,6);
            mesiac(b+1,6) = temp;

              temp = mesiac(b,7);
            mesiac(b,7) = mesiac(b+1,7);
            mesiac(b+1,7) = temp;

              temp = mesiac(b,8);
            mesiac(b,8) = mesiac(b+1,8);
            mesiac(b+1,8) = temp;

              temp = mesiac(b,9);
            mesiac(b,2) = mesiac(b+1,9);
            mesiac(b+1,9) = temp;
        end
    end
end
end