function [poc_aut,zvysokO] = Gen_auta(pocet_aut_na_kriz, int_pri_aut,doba_prechodu,zvysokI,spusti_pruhy)
poc_aut = pocet_aut_na_kriz;
prichod = int_pri_aut;
zvysokO = [];
pridaj_auta = 0;

for poc = 1:6
%     vycet kolko aut sa ma pridat v jednom cykle
    pridaj_auta = floor((doba_prechodu+zvysokI(poc))/prichod(poc));
    
    if pridaj_auta == Inf
        pridaj_auta =0;
    end
    
    zvysokO(poc) = mod(doba_prechodu,prichod(poc)); % pre delenie so zvyskom
    if (doba_prechodu+zvysokI(poc)) >= doba_prechodu
        zvysokO(poc) = (doba_prechodu+zvysokI(poc))- pridaj_auta*prichod(poc);
    end
    
%     pridanie aut do rady 
    poc_aut(poc) = poc_aut(poc) + pridaj_auta;
    
%     odpocet aut z radu na zelenu o jedno auto v jednom cykle
    if spusti_pruhy(poc) == 1
        poc_aut(poc) = poc_aut(poc) -1;
    end
    
    if poc_aut(poc)<0
       poc_aut(poc) = 0; 
    end
end



end
