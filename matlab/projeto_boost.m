function projeto_boost(Vg,Vo,fs,Po,rip_i,rip_v)
%----------------------------------------------------------------------
% Projeto de conversor Boost
%
% Entradas:
%   Vg    - tensão de entrada (V)
%   Vo    - tensão de saída (V)
%   fs    - frequência de chaveamento (Hz)
%   Po    - potência de saída (W)
%   rip_i - ripple de corrente (% da corrente média do indutor)
%   rip_v - ripple de tensão (% da tensão de saída)
%----------------------------------------------------------------------

    Ts = 1/fs;

%======================================================================
% Ponto de operação em CCM
%======================================================================

    D       = 1 - Vg/Vo;
    Dp      = 1-D;
    R       = Vo^2/Po;
    IL      = Vg/(Dp^2*R);
    Delta_i = (rip_i/100)*IL;
    L       = Vg*D*Ts/(2*Delta_i);
    K       = 2*L/(R*Ts);
    Kcrit   = D*Dp^2;
    
    fprintf('\n');
    fprintf('-------------------------------\n');
    fprintf('Projeto do Conversor Boost\n');
    fprintf('-------------------------------\n');
    
    fprintf('D = %.4f\n',D);
    fprintf('K = %.4f\n',K);
    fprintf('Kcrit = %.4f\n',Kcrit);

%======================================================================
% Verificação do modo de condução
%======================================================================

    if K >= Kcrit
        fprintf('\nModo de operação: CCM\n\n');
    
        Delta_v = rip_v/100*Vo;
        C       = Delta_i*Ts/(8*Delta_v);
        ILmax   = IL + Delta_i/2;
        ILmin   = IL - Delta_i/2;
    
        fprintf('Indutância      = %.4e H\n',L);
        fprintf('Capacitância    = %.4e F\n',C);
        fprintf('Duty-cycle      = %.4f\n',D);
        fprintf('Corrente média  = %.4f A\n',IL);
        fprintf('Corrente máxima = %.4f A\n',ILmax);
        fprintf('Corrente mínima = %.4f A\n',ILmin);
    else
        fprintf('\nModo de operação: DCM\n\n');
    
        M = Vo/Vg;
        K = D^2/(M*(M-1));
        L = K*R*Ts/2;
    
        fprintf('Indutância = %.4e H\n',L);
        fprintf('Duty-cycle = %.4f\n',D);
    
    end
end