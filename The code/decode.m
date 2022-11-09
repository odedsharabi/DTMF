function phone_number = decode(v)
phone_number = ""; %if there is no number typed
for k = 1: size(v,1)
    digit = '';
    lFreq = min(v(k,:));
    hFreq = max(v(k,:));
    ERROR = 10;

    if (lFreq <=697+ERROR) && (lFreq>=697-ERROR)
    if (hFreq <=1209+ERROR) && (hFreq >=1209-ERROR)
       digit = '1';
    end
    
    if (hFreq <=1336+ERROR) && (hFreq >=1336-ERROR)
       digit = '2';
    end
    
    if (hFreq <=1477+ERROR) && (hFreq >=1477-ERROR)
       digit = '3';
    end
    
    if (hFreq <=1633+ERROR) && (hFreq >=1633-ERROR)
       digit = 'A';
    end
    end

    if (lFreq <=770+ERROR) && (lFreq>=770-ERROR)
    if (hFreq <=1209+ERROR) && (hFreq >=1209-ERROR)
       digit = '4';
    end
    
    if (hFreq <=1336+ERROR) && (hFreq >=1336-ERROR)
       digit = '5';
    end
    
    if (hFreq <=1477+ERROR) && (hFreq >=1477-ERROR)
       digit = '6';
    end
    
    if (hFreq <=1633+ERROR) && (hFreq >=1633-ERROR)
       digit = 'B';
    end
    
    end

    if (lFreq <=852+ERROR) && (lFreq>=852-ERROR)
    if (hFreq <=1209+ERROR) && (hFreq >=1209-ERROR)
       digit = '7';
    end
    
    if (hFreq <=1336+ERROR) && (hFreq >=1336-ERROR)
       digit = '8';
    end
    
    if (hFreq <=1477+ERROR) && (hFreq >=1477-ERROR)
       digit = '9';
    end
    
    if (hFreq <=1633+ERROR) && (hFreq >=1633-ERROR)
       digit = 'C';
    end
    end

    if (lFreq <=941+ERROR) && (lFreq>=941-ERROR)
    if (hFreq <=1209+ERROR) && (hFreq >=1209-ERROR) 
       digit = '*';
    end
    
    if (hFreq <=1336+ERROR) && (hFreq >=1336-ERROR)
       digit = '0';
    end
    
    if (hFreq <=1477+ERROR) && (hFreq >=1477-ERROR)
       digit = '#';
    end
    
    if (hFreq <=1633+ERROR) && (hFreq >=1633-ERROR)
       digit = 'D';
    end 
    end
    phone_number = append(phone_number, digit);
end
end
