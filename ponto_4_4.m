function ponto_4_4(f, m_X, num)
hold on
    if num == 1 || num == 2 || num == 3
        if num == 1
            j = 1;
        end
        if num ==2
            j = 4;
        end
        if num ==3 
            j = 7;
        end            
        figure(27)
        subplot(6, 3,j)
        plot(f,m_X) 
    end
        
    if num == 4 || num == 5 || num == 6
        if num == 4
            j = 2;
        end
        if num == 5
            j = 5;
        end
        if num == 6
            j = 8;
        end
        figure(27)
        subplot(6, 3,j)
        plot(f,m_X) 
    
    elseif num == 7 || num == 8 || num == 9 || num == 10 || num == 11 || num == 12
        if num ==7
            j = 3;
        end
        if num == 8
            j =6;
        end
        if num == 9
            j = 9;
        end
        if num == 10
            j = 12;
        end
        if num == 11
            j = 15;
        end
        if num == 12
            j = 18;
        end
        
        figure(27)
        subplot(6,3,j)
        plot(f,m_X) 
    end    
hold off
end

    