rho3 =exp(-rho1*dbar)+rho2*dbar; % additional parameter on risk-premium
beta = 1/(1+rbar+(psi/rho1^2)*(1-rho3+dbar*(rho1-rho2)));
g   = (1+g_n)*(1 + g_a)-1;


y_0=1;
To = 0; %0.0175;       % Exogenous tranfers including aid and remittances
dbar = -0.0;      % steady-state debt, debt level of Gabon.
coef = 1; % loading on the derivative on the internalization


offss=1;

vv_0 =0; 
gov_0 = gov_exp_0 - gov_inv_0;  % year 2012, Gabon GOV (public) consumption as % of GDP.
invk_0 = inv_0 - gov_inv_0;     % year 2012, Gabon GOV (private) investment as % of GDP.
invs_0 = gov_inv_0;             % year 2012, Gabon GOV (public) investment as % of GDP.
r_0 = rbar+(psi/(rho1^2))*(exp(rho1*(d_0-dbar-omega*vv_0))-rho2*(d_0-dbar-omega*vv_0)-rho3);
govt_c = gov_0/c_0;             % the ratio of government consumption over private consumption
kappa = (govt_c)^gamma; 


phi_k0 = 0.25;   % initial value
phi_s0 = 0.25;   % initial value

% cost overrun
phi_k=fsolve('costoverrun', phi_k0, optimset('Display','iter'), cost_k0, delta_k, e_k, g, invk_0, k_0);
phi_s=fsolve('costoverrun', phi_s0, optimset('Display','iter'), cost_s0, delta_s, e_s, g, invs_0, s_0);


if offss==0;
% Find Abar to meet the criterion of yss=1

    iter_     = 0;
    myMaxIter = 500;
    notConverged = true;
    lambda_ = 0.025;
    tol_    = 1e-5;
    % set an initial Abarvalue and take loops to find the one with unit y.
    A_desire = 1.1;  % technology level % !!!!!

    while (iter_ < myMaxIter) && (notConverged) %--start of the loop of searching for Abar to let yvalue==1
      iter_ = iter_ +1;

      Abar=A_desire;
      main_steadystate_riskpm;  %%   !!!!!!!!!!!!!!!!!!!!!!!!!!

      eps_step = eps^(5/9); %-getrealsmall()
      %--get Y, get X of the original simulations
      y0 = yvalue;
      A0 = Abar;
      %--aiming to get dY = gj dA
      %start
      %--create dX and do derivative
      Abar = Abar + eps_step; 
      %--simulate the model 
      main_steadystate_riskpm;   %%   !!!!!!!!!!!!!!!!!!!!!!!!!!

      %--get the vector of changes & form the derivative
      y_ = yvalue ;
      dyy_ = (y_ - y0)./eps_step;
      getj_ = dyy_;

      A_base=Abar;
      y_base   = yvalue;
      y_desire = 1;
      dy_ = [y_desire - y_base];
      %getj_
      dA_ = getj_\dy_;
      A_desire = lambda_*dA_ + A_base;

      if abs(dy_) < tol_
        notConverged = false;
        iter_
      end

    end %--of the loop  

end

% solve for the steady state
disp 'solve for the steady state';
main_steadystate_riskpm; % imported from a separate file


%save all the parameters used in the dynare mod file
save main_parameters_riskpm.mat    theta_k theta_s gamma delta_k delta_s beta kappa Abar e_k e_s phi_k phi_s rbar psi rho1 rho2 rho3 omega dbar g_n g_a g xi...
            fvalue dvalue  ...
             kvalue svalue ikvalue isvalue cvalue ...
            yoilvalue vvvalue govvalue ynonvalue tbvalue cavalue yvalue  ...
            yoil_0 f_0 r_0 d_0 invk_0 invs_0  k_0 s_0 c_0 ca_0 gov_0  To;

% numbers of iteration 
itermax=20;
                    
% run dynare mod file           
dynare main_model_riskpm_cal_Gabon_v2.mod noclearall;
%dynare main_model_riskpm_cal_alt.mod noclearall;

% save the series for charts
save main_data_riskpm_cal.mat c k s f ynon invs invk r tb ca gov ch govh y;
save main_steadystate_riskpm_cal.mat cvalue kvalue svalue fvalue ynonvalue isvalue ikvalue rvalue tbvalue cavalue;
