function [t_end,elapsed,m_frac,x] = Solver(N,m_i,Ispg_,F_,alpha,mu_e,r_0,r_f,T)


% Space allocation
t_end = zeros(N,N);
elapsed = zeros(N,N);
m_frac = zeros(N,N);


% Initial conditions
vth_0 = sqrt(mu_e/r_0);
vr_0 = 0;
th_0 = 0;

x_0 = [r_0,th_0,vr_0,vth_0,m_i];


for i=1:numel(F_)
    for j=1:numel(Ispg_)
        
        F = F_(i);
        Ispg = Ispg_(j);
        tic
        err = 101;
        tstep = 1e6;
        init = 0;
        
        while abs(err)>1e-6
            
            t_span = linspace(0,T,1000);
            
            [t,x] = ode45(@(t,x) Fsyst(t,x,mu_e,F,Ispg,alpha),t_span,x_0);
            
            err = x(end,1) - r_f;
            
            if( err<0 )
                if(init~=0)
                    tstep= tstep/2;
                end
                T = T + tstep;
            else
                tstep = tstep/2;
                T = T - tstep;
                init =1;
            end
            
        end
        t_end(i,j) = t(end);
        elapsed(i,j) = toc;
        m_frac(i,j) = x(end,5);
    end
end

end