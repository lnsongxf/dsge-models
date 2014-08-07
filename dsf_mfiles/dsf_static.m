function [residual, g1, g2] = dsf_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                    columns: equations in order of declaration
%                                                    rows: variables in declaration order
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: equations in order of declaration
%                                                       rows: variables in declaration order
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 39, 1);

%
% Model equations
%

ACx__ = y(14)*params(42)/2*(y(11)/y(14)-params(17)-params(25))^2;
ACn__ = y(13)*params(41)/2*(y(10)/y(13)-params(16)-params(25))^2;
abcap__ = (params(76)*(params(25)+params(18))+(1+y(12)/y(38)-params(18)-params(25))^params(47)*(y(12)-params(76)*(params(25)+params(18))))/y(12);
compn__ = (1-params(56)-params(55))*y(20)^(-params(21))/(params(55)*y(23)^(1-params(21))+params(56)*y(22)^(1-params(21))+(1-params(56)-params(55))*y(20)^(1-params(21)));
DD__ = y(12)*y(21)*abcap__+(1+y(28))*y(3)/(1+params(25))-y(3)+params(38)*(1+y(31))*y(4)/(1+params(25))-params(38)*y(4)+y(18)*(1+y(27))*y(1)/(1+params(25))-y(18)*y(1)+params(70)-(y(5)+y(6))*params(31)-(y(8)+y(17))-y(39)*params(39);
h_target__ = params(31)+y(7)*(1-params(32))/(y(5)+y(6));
T_target__ = params(70)-y(7)*params(32);
T_rule__ = y(35)+params(35)*(T_target__-y(35))-params(36)*(y(4)-params(15));
h_rule__ = y(9)+params(33)*(h_target__-y(9))+(y(4)-params(15))*params(34)/(y(20)*y(25)+y(22)*y(26));
hbar_staggered__ = min(h_rule__,params(31)+x(43)+x(44)+x(45)-x(46)-x(47)-x(48));
h_capped__ = min(h_rule__,params(30));
Tbar_staggered__ = max(T_rule__,params(70)+x(49)+x(50)+x(51)-x(52)-x(53)-x(54));
T_capped__ = max(T_rule__,params(67));
uazuaz__ = params(74)/y(37);
uaz_b__ = y(18)*params(74)/y(37);
uaz__ = params(74)*y(21)/params(46)/y(37);
T10 = params(42)/2;
T22 = params(41)/2;
T42 = (1+y(12)/y(38)-params(18)-params(25))^params(47);
T55 = (1-params(56)-params(55))*y(20)^(-params(21));
T63 = params(55)*y(23)^(1-params(21))+params(56)*y(22)^(1-params(21));
T66 = T63+(1-params(56)-params(55))*y(20)^(1-params(21));
T219 = params(74)/y(37);
T230 = params(4)*(y(26)/params(51))^params(65);
T233 = T230*y(39)^params(49);
T237 = y(14)^(params(73)+params(8));
T241 = y(16)^(1-params(8));
T249 = params(2)*(y(25)/params(50))^params(64);
T252 = T249*y(39)^params(48);
T256 = y(13)^(params(72)+params(7));
T260 = y(15)^(1-params(7));
T276 = T63+y(20)^(1-params(21))*(1-params(55)-params(56));
T290 = params(42)*(y(11)/y(14)-params(17)-params(25));
T301 = T10*(y(11)/y(14)-params(17)-params(25))^2;
T304 = params(41)*(y(10)/y(13)-params(16)-params(25));
T315 = T22*(y(10)/y(13)-params(16)-params(25))^2;
T433 = exp(params(23)*(y(3)/y(37)+params(38)*y(4)/y(37)-params(14)/params(74)-params(38)*params(15)/params(74)));
T649 = params(31)+x(43)+x(44)+x(45)-x(46)-x(47)-x(48)>h_rule__;
T679 = (-(params(68)*(params(30)>h_rule__)*params(33)*(-(y(7)*(1-params(32))))/((y(5)+y(6))*(y(5)+y(6)))+(1-params(68))*T649*params(33)*(-(y(7)*(1-params(32))))/((y(5)+y(6))*(y(5)+y(6)))));
T723 = 1/y(13)*2*(y(10)/y(13)-params(16)-params(25));
T740 = 1/y(14)*2*(y(11)/y(14)-params(17)-params(25));
T751 = getPowerDeriv(1+y(12)/y(38)-params(18)-params(25),params(47),1);
T758 = (y(12)*(T42+(y(12)-params(76)*(params(25)+params(18)))*1/y(38)*T751)-(params(76)*(params(25)+params(18))+T42*(y(12)-params(76)*(params(25)+params(18)))))/(y(12)*y(12));
T779 = 2*(y(10)/y(13)-params(16)-params(25))*(-y(10))/(y(13)*y(13));
T804 = 2*(y(11)/y(14)-params(17)-params(25))*(-y(11))/(y(14)*y(14));
T871 = getPowerDeriv(T276,1/(1-params(21)),1);
T895 = (-((y(4)-params(15))*params(34)*y(25)))/((y(20)*y(25)+y(22)*y(26))*(y(20)*y(25)+y(22)*y(26)));
T936 = (-((y(4)-params(15))*params(34)*y(26)))/((y(20)*y(25)+y(22)*y(26))*(y(20)*y(25)+y(22)*y(26)));
T967 = (-(y(20)*(y(4)-params(15))*params(34)))/((y(20)*y(25)+y(22)*y(26))*(y(20)*y(25)+y(22)*y(26)));
T989 = (-(y(22)*(y(4)-params(15))*params(34)))/((y(20)*y(25)+y(22)*y(26))*(y(20)*y(25)+y(22)*y(26)));
T1005 = (-(params(3)/(1+params(3))/(1+y(9))));
T1034 = (-params(74))/(y(37)*y(37));
T1061 = (-(y(18)*params(74)))/(y(37)*y(37));
T1099 = (y(12)-params(76)*(params(25)+params(18)))*T751*(-y(12))/(y(38)*y(38))/y(12);
lhs =y(26);
rhs =T233*T237*T241;
residual(1)= lhs-rhs;
lhs =y(25);
rhs =T252*T256*T260;
residual(2)= lhs-rhs;
lhs =y(19);
rhs =y(24)+y(20)*params(1);
residual(3)= lhs-rhs;
lhs =y(21);
rhs =y(24)+y(20)*params(5);
residual(4)= lhs-rhs;
lhs =y(18);
rhs =T276^(1/(1-params(21)));
residual(5)= lhs-rhs;
lhs =1;
rhs =(1+y(27))*params(11)*(1+y(9))/((1+params(25))*(1+y(9)));
residual(6)= lhs-rhs;
lhs =(1+y(27))*(1+T290);
rhs =y(33)/y(19)+1-params(17)+T290*(1+y(11)/y(14)-params(17))-T301;
residual(7)= lhs-rhs;
lhs =(1+y(27))*(1+T304);
rhs =y(32)/y(19)+1-params(16)+T304*(1+y(10)/y(13)-params(16))-T315;
residual(8)= lhs-rhs;
lhs =1+y(30);
rhs =y(18)*(1+y(27))*(1-params(22)*(y(2)-params(13)))/y(18);
residual(9)= lhs-rhs;
lhs =y(14)*(1+params(25));
rhs =y(11)+y(14)*(1-params(17));
residual(10)= lhs-rhs;
lhs =y(13)*(1+params(25));
rhs =y(10)+y(13)*(1-params(16));
residual(11)= lhs-rhs;
lhs =y(38)*(1+params(25));
rhs =y(12)+y(38)*(1-params(18));
residual(12)= lhs-rhs;
lhs =y(39);
rhs =params(76)*params(60)+params(59)*(y(38)-params(76));
residual(13)= lhs-rhs;
lhs =y(25)*y(20)*(1-params(7))/y(15);
rhs =y(36);
residual(14)= lhs-rhs;
lhs =y(26)*y(22)*(1-params(8))/y(16);
rhs =y(36);
residual(15)= lhs-rhs;
lhs =y(25)*y(20)*params(7)/y(13);
rhs =y(32);
residual(16)= lhs-rhs;
lhs =y(26)*y(22)*params(8)/y(14);
rhs =y(33);
residual(17)= lhs-rhs;
lhs =y(25);
rhs =(y(5)+y(6))*compn__+params(1)*(y(11)+y(10)+ACx__+ACn__)+y(12)*abcap__*params(5);
residual(18)= lhs-rhs;
lhs =y(16)+y(15);
rhs =(1+params(3))*params(37);
residual(19)= lhs-rhs;
lhs =y(2)+y(3)+params(38)*y(4);
rhs =params(38)*(1+y(31))*y(4)/(1+params(25))+(1+y(28))*y(3)/(1+params(25))+y(12)*y(21)*abcap__+y(5)+y(6)+y(19)*(y(11)+y(10)+ACx__+ACn__)+(1+y(30))*y(2)/(1+params(25))+params(22)/2*(y(2)-params(13))^2-y(20)*y(25)-y(22)*y(26)-(y(8)+y(17))-y(29);
residual(20)= lhs-rhs;
lhs =y(6);
rhs =(params(37)*y(36)*params(3)+params(3)/(1+params(3))*(y(35)+y(29)))/(1+y(9));
residual(21)= lhs-rhs;
lhs =y(34);
rhs =(y(25)*y(20)*params(48)+y(26)*y(22)*params(49))/(y(21)*y(39));
residual(22)= lhs-rhs;
lhs =y(31);
rhs =params(58)+params(43)*T433;
residual(23)= lhs-rhs;
lhs =y(30);
rhs =y(31)+params(40);
residual(24)= lhs-rhs;
lhs =y(37);
rhs =y(20)*y(25)+y(22)*y(26);
residual(25)= lhs-rhs;
lhs =(y(5)+y(6))*(y(9)-params(31))-(y(35)-params(70));
rhs =DD__;
residual(26)= lhs-rhs;
lhs =y(7);
rhs =(y(5)+y(6))*(y(9)-params(31))-(y(35)-params(70));
residual(27)= lhs-rhs;
lhs =y(9);
rhs =params(68)*h_capped__+(1-params(68))*hbar_staggered__;
residual(28)= lhs-rhs;
lhs =y(35);
rhs =params(69)*T_capped__+(1-params(69))*Tbar_staggered__;
residual(29)= lhs-rhs;
lhs =y(3);
rhs =params(25)*params(14)/(1+params(25))+y(3)/(1+params(25))+x(7)/uazuaz__+x(8)/uazuaz__+x(9)/uazuaz__-x(10)/uazuaz__-x(11)/uazuaz__-x(12)/uazuaz__;
residual(30)= lhs-rhs;
lhs =y(1);
rhs =params(25)*params(12)/(1+params(25))+y(1)/(1+params(25))+x(19)/uaz_b__+x(20)/uaz_b__+x(21)/uaz_b__-x(22)/uaz_b__-x(23)/uaz_b__-x(24)/uaz_b__;
residual(31)= lhs-rhs;
lhs =y(12)*uaz__;
rhs =params(76)*(params(25)+params(18))+(x(1)+x(2)+x(3)-x(4)-x(5)-x(6))/y(21);
residual(32)= lhs-rhs;
lhs =y(8)*uazuaz__;
rhs =params(29)+x(25)+x(26)+x(27)-x(28)-x(29)-x(30);
residual(33)= lhs-rhs;
lhs =y(17)*uazuaz__;
rhs =params(44)+x(31)+x(32)+x(33)-x(34)-x(35)-x(36);
residual(34)= lhs-rhs;
lhs =y(29)*uazuaz__;
rhs =params(54)+x(37)+x(38)+x(39)-x(40)-x(41)-x(42);
residual(35)= lhs-rhs;
residual(36) = y(28);
lhs =y(22);
rhs =1+x(55)+x(56)+x(57)-x(58)-x(59)-x(60);
residual(37)= lhs-rhs;
lhs =y(23);
rhs =1+x(61)+x(62)+x(63)-x(64)-x(65)-x(66);
residual(38)= lhs-rhs;
lhs =y(24);
rhs =1+x(67)+x(68)+x(69)-x(70)-x(71)-x(72);
residual(39)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(39, 39);

  %
  % Jacobian matrix
  %

  g1(1,14)=(-(T241*T233*getPowerDeriv(y(14),params(73)+params(8),1)));
  g1(1,16)=(-(T233*T237*getPowerDeriv(y(16),1-params(8),1)));
  g1(1,26)=1-T241*T237*y(39)^params(49)*params(4)*1/params(51)*getPowerDeriv(y(26)/params(51),params(65),1);
  g1(1,39)=(-(T241*T237*T230*getPowerDeriv(y(39),params(49),1)));
  g1(2,13)=(-(T260*T252*getPowerDeriv(y(13),params(72)+params(7),1)));
  g1(2,15)=(-(T252*T256*getPowerDeriv(y(15),1-params(7),1)));
  g1(2,25)=1-T260*T256*y(39)^params(48)*params(2)*1/params(50)*getPowerDeriv(y(25)/params(50),params(64),1);
  g1(2,39)=(-(T260*T256*T249*getPowerDeriv(y(39),params(48),1)));
  g1(3,19)=1;
  g1(3,20)=(-params(1));
  g1(3,24)=(-1);
  g1(4,20)=(-params(5));
  g1(4,21)=1;
  g1(4,24)=(-1);
  g1(5,18)=1;
  g1(5,20)=(-((1-params(55)-params(56))*getPowerDeriv(y(20),1-params(21),1)*T871));
  g1(5,22)=(-(T871*params(56)*getPowerDeriv(y(22),1-params(21),1)));
  g1(5,23)=(-(T871*params(55)*getPowerDeriv(y(23),1-params(21),1)));
  g1(6,9)=(-(((1+params(25))*(1+y(9))*(1+y(27))*params(11)-(1+params(25))*(1+y(27))*params(11)*(1+y(9)))/((1+params(25))*(1+y(9))*(1+params(25))*(1+y(9)))));
  g1(6,27)=(-(params(11)*(1+y(9))/((1+params(25))*(1+y(9)))));
  g1(7,11)=(1+y(27))*params(42)*1/y(14)-((1+y(11)/y(14)-params(17))*params(42)*1/y(14)+T290*1/y(14)-T10*T740);
  g1(7,14)=(1+y(27))*params(42)*(-y(11))/(y(14)*y(14))-((1+y(11)/y(14)-params(17))*params(42)*(-y(11))/(y(14)*y(14))+T290*(-y(11))/(y(14)*y(14))-T10*T804);
  g1(7,19)=(-((-y(33))/(y(19)*y(19))));
  g1(7,27)=1+T290;
  g1(7,33)=(-(1/y(19)));
  g1(8,10)=(1+y(27))*params(41)*1/y(13)-((1+y(10)/y(13)-params(16))*params(41)*1/y(13)+T304*1/y(13)-T22*T723);
  g1(8,13)=(1+y(27))*params(41)*(-y(10))/(y(13)*y(13))-((1+y(10)/y(13)-params(16))*params(41)*(-y(10))/(y(13)*y(13))+T304*(-y(10))/(y(13)*y(13))-T22*T779);
  g1(8,19)=(-((-y(32))/(y(19)*y(19))));
  g1(8,27)=1+T304;
  g1(8,32)=(-(1/y(19)));
  g1(9,2)=(-(y(18)*(1+y(27))*(-params(22))/y(18)));
  g1(9,27)=(-(y(18)*(1-params(22)*(y(2)-params(13)))/y(18)));
  g1(9,30)=1;
  g1(10,11)=(-1);
  g1(10,14)=1+params(25)-(1-params(17));
  g1(11,10)=(-1);
  g1(11,13)=1+params(25)-(1-params(16));
  g1(12,12)=(-1);
  g1(12,38)=1+params(25)-(1-params(18));
  g1(13,38)=(-params(59));
  g1(13,39)=1;
  g1(14,15)=(-(y(25)*y(20)*(1-params(7))))/(y(15)*y(15));
  g1(14,20)=y(25)*(1-params(7))/y(15);
  g1(14,25)=y(20)*(1-params(7))/y(15);
  g1(14,36)=(-1);
  g1(15,16)=(-(y(26)*y(22)*(1-params(8))))/(y(16)*y(16));
  g1(15,22)=y(26)*(1-params(8))/y(16);
  g1(15,26)=y(22)*(1-params(8))/y(16);
  g1(15,36)=(-1);
  g1(16,13)=(-(y(25)*y(20)*params(7)))/(y(13)*y(13));
  g1(16,20)=y(25)*params(7)/y(13);
  g1(16,25)=y(20)*params(7)/y(13);
  g1(16,32)=(-1);
  g1(17,14)=(-(y(26)*y(22)*params(8)))/(y(14)*y(14));
  g1(17,22)=y(26)*params(8)/y(14);
  g1(17,26)=y(22)*params(8)/y(14);
  g1(17,33)=(-1);
  g1(18,5)=(-compn__);
  g1(18,6)=(-compn__);
  g1(18,10)=(-(params(1)*(1+y(13)*T22*T723)));
  g1(18,11)=(-(params(1)*(1+y(14)*T10*T740)));
  g1(18,12)=(-(abcap__*params(5)+y(12)*params(5)*T758));
  g1(18,13)=(-(params(1)*(T315+y(13)*T22*T779)));
  g1(18,14)=(-(params(1)*(T301+y(14)*T10*T804)));
  g1(18,20)=(-((y(5)+y(6))*(T66*(1-params(56)-params(55))*getPowerDeriv(y(20),(-params(21)),1)-T55*(1-params(56)-params(55))*getPowerDeriv(y(20),1-params(21),1))/(T66*T66)));
  g1(18,22)=(-((y(5)+y(6))*(-(T55*params(56)*getPowerDeriv(y(22),1-params(21),1)))/(T66*T66)));
  g1(18,23)=(-((y(5)+y(6))*(-(T55*params(55)*getPowerDeriv(y(23),1-params(21),1)))/(T66*T66)));
  g1(18,25)=1;
  g1(18,38)=(-(y(12)*params(5)*T1099));
  g1(19,15)=1;
  g1(19,16)=1;
  g1(20,2)=1-((1+y(30))/(1+params(25))+params(22)/2*2*(y(2)-params(13)));
  g1(20,3)=1-(1+y(28))/(1+params(25));
  g1(20,4)=params(38)-params(38)*(1+y(31))/(1+params(25));
  g1(20,5)=(-1);
  g1(20,6)=(-1);
  g1(20,8)=1;
  g1(20,10)=(-(y(19)*(1+y(13)*T22*T723)));
  g1(20,11)=(-(y(19)*(1+y(14)*T10*T740)));
  g1(20,12)=(-(y(21)*abcap__+y(12)*y(21)*T758));
  g1(20,13)=(-(y(19)*(T315+y(13)*T22*T779)));
  g1(20,14)=(-(y(19)*(T301+y(14)*T10*T804)));
  g1(20,17)=1;
  g1(20,19)=(-(y(11)+y(10)+ACx__+ACn__));
  g1(20,20)=y(25);
  g1(20,21)=(-(y(12)*abcap__));
  g1(20,22)=y(26);
  g1(20,25)=y(20);
  g1(20,26)=y(22);
  g1(20,28)=(-(y(3)/(1+params(25))));
  g1(20,29)=1;
  g1(20,30)=(-(y(2)/(1+params(25))));
  g1(20,31)=(-(params(38)*y(4)/(1+params(25))));
  g1(20,38)=(-(y(12)*y(21)*T1099));
  g1(21,6)=1;
  g1(21,9)=(-((-(params(37)*y(36)*params(3)+params(3)/(1+params(3))*(y(35)+y(29))))/((1+y(9))*(1+y(9)))));
  g1(21,29)=T1005;
  g1(21,35)=T1005;
  g1(21,36)=(-(params(3)*params(37)/(1+y(9))));
  g1(22,20)=(-(y(25)*params(48)/(y(21)*y(39))));
  g1(22,21)=(-((-(y(39)*(y(25)*y(20)*params(48)+y(26)*y(22)*params(49))))/(y(21)*y(39)*y(21)*y(39))));
  g1(22,22)=(-(y(26)*params(49)/(y(21)*y(39))));
  g1(22,25)=(-(y(20)*params(48)/(y(21)*y(39))));
  g1(22,26)=(-(y(22)*params(49)/(y(21)*y(39))));
  g1(22,34)=1;
  g1(22,39)=(-((-(y(21)*(y(25)*y(20)*params(48)+y(26)*y(22)*params(49))))/(y(21)*y(39)*y(21)*y(39))));
  g1(23,3)=(-(params(43)*T433*params(23)*1/y(37)));
  g1(23,4)=(-(params(43)*T433*params(23)*params(38)/y(37)));
  g1(23,31)=1;
  g1(23,37)=(-(params(43)*T433*params(23)*((-y(3))/(y(37)*y(37))+(-(params(38)*y(4)))/(y(37)*y(37)))));
  g1(24,30)=1;
  g1(24,31)=(-1);
  g1(25,20)=(-y(25));
  g1(25,22)=(-y(26));
  g1(25,25)=(-y(20));
  g1(25,26)=(-y(22));
  g1(25,37)=1;
  g1(26,1)=(-(y(18)*(1+y(27))/(1+params(25))-y(18)));
  g1(26,3)=(-((1+y(28))/(1+params(25))-1));
  g1(26,4)=(-(params(38)*(1+y(31))/(1+params(25))-params(38)));
  g1(26,5)=y(9)-params(31)-(-params(31));
  g1(26,6)=y(9)-params(31)-(-params(31));
  g1(26,8)=1;
  g1(26,9)=y(5)+y(6);
  g1(26,12)=(-(y(21)*abcap__+y(12)*y(21)*T758));
  g1(26,17)=1;
  g1(26,18)=(-((1+y(27))*y(1)/(1+params(25))-y(1)));
  g1(26,21)=(-(y(12)*abcap__));
  g1(26,27)=(-(y(18)*y(1)/(1+params(25))));
  g1(26,28)=(-(y(3)/(1+params(25))));
  g1(26,31)=(-(params(38)*y(4)/(1+params(25))));
  g1(26,35)=(-1);
  g1(26,38)=(-(y(12)*y(21)*T1099));
  g1(26,39)=params(39);
  g1(27,5)=(-(y(9)-params(31)));
  g1(27,6)=(-(y(9)-params(31)));
  g1(27,7)=1;
  g1(27,9)=(-(y(5)+y(6)));
  g1(27,35)=1;
  g1(28,4)=(-(params(68)*params(34)/(y(20)*y(25)+y(22)*y(26))*(params(30)>h_rule__)+(1-params(68))*params(34)/(y(20)*y(25)+y(22)*y(26))*T649));
  g1(28,5)=T679;
  g1(28,6)=T679;
  g1(28,7)=(-(params(68)*(params(30)>h_rule__)*params(33)*(1-params(32))/(y(5)+y(6))+(1-params(68))*T649*params(33)*(1-params(32))/(y(5)+y(6))));
  g1(28,9)=1-(params(68)*(params(30)>h_rule__)*(1-params(33))+(1-params(68))*T649*(1-params(33)));
  g1(28,20)=(-(params(68)*(params(30)>h_rule__)*T895+(1-params(68))*T649*T895));
  g1(28,22)=(-(params(68)*(params(30)>h_rule__)*T936+(1-params(68))*T649*T936));
  g1(28,25)=(-(params(68)*(params(30)>h_rule__)*T967+(1-params(68))*T649*T967));
  g1(28,26)=(-(params(68)*(params(30)>h_rule__)*T989+(1-params(68))*T649*T989));
  g1(29,4)=(-(params(69)*(-params(36))*(T_rule__>params(67))+(1-params(69))*(-params(36))*(T_rule__>params(70)+x(49)+x(50)+x(51)-x(52)-x(53)-x(54))));
  g1(29,7)=(-(params(69)*(T_rule__>params(67))*params(35)*(-params(32))+(1-params(69))*(T_rule__>params(70)+x(49)+x(50)+x(51)-x(52)-x(53)-x(54))*params(35)*(-params(32))));
  g1(29,35)=1-(params(69)*(T_rule__>params(67))*(1-params(35))+(1-params(69))*(T_rule__>params(70)+x(49)+x(50)+x(51)-x(52)-x(53)-x(54))*(1-params(35)));
  g1(30,3)=1-1/(1+params(25));
  g1(30,37)=(-((-(x(7)*T1034))/(uazuaz__*uazuaz__)+(-(x(8)*T1034))/(uazuaz__*uazuaz__)+(-(x(9)*T1034))/(uazuaz__*uazuaz__)-(-(x(10)*T1034))/(uazuaz__*uazuaz__)-(-(x(11)*T1034))/(uazuaz__*uazuaz__)-(-(x(12)*T1034))/(uazuaz__*uazuaz__)));
  g1(31,1)=1-1/(1+params(25));
  g1(31,18)=(-((-(T219*x(19)))/(uaz_b__*uaz_b__)+(-(T219*x(20)))/(uaz_b__*uaz_b__)+(-(T219*x(21)))/(uaz_b__*uaz_b__)-(-(T219*x(22)))/(uaz_b__*uaz_b__)-(-(T219*x(23)))/(uaz_b__*uaz_b__)-(-(T219*x(24)))/(uaz_b__*uaz_b__)));
  g1(31,37)=(-((-(x(19)*T1061))/(uaz_b__*uaz_b__)+(-(x(20)*T1061))/(uaz_b__*uaz_b__)+(-(x(21)*T1061))/(uaz_b__*uaz_b__)-(-(x(22)*T1061))/(uaz_b__*uaz_b__)-(-(x(23)*T1061))/(uaz_b__*uaz_b__)-(-(x(24)*T1061))/(uaz_b__*uaz_b__)));
  g1(32,12)=uaz__;
  g1(32,21)=y(12)*params(74)*1/params(46)/y(37)-(-(x(1)+x(2)+x(3)-x(4)-x(5)-x(6)))/(y(21)*y(21));
  g1(32,37)=y(12)*(-(params(74)*y(21)/params(46)))/(y(37)*y(37));
  g1(33,8)=uazuaz__;
  g1(33,37)=y(8)*T1034;
  g1(34,17)=uazuaz__;
  g1(34,37)=y(17)*T1034;
  g1(35,29)=uazuaz__;
  g1(35,37)=y(29)*T1034;
  g1(36,28)=1;
  g1(37,22)=1;
  g1(38,23)=1;
  g1(39,24)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],39,1521);
end
end
