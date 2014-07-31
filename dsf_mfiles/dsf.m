%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'dsf';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('dsf.log');
M_.exo_names = 'e_iz0';
M_.exo_names_tex = 'e\_iz0';
M_.exo_names_long = 'e_iz0';
M_.exo_names = char(M_.exo_names, 'e_iz1');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_iz1');
M_.exo_names_long = char(M_.exo_names_long, 'e_iz1');
M_.exo_names = char(M_.exo_names, 'e_iz2');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_iz2');
M_.exo_names_long = char(M_.exo_names_long, 'e_iz2');
M_.exo_names = char(M_.exo_names, 'e_d0');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_d0');
M_.exo_names_long = char(M_.exo_names_long, 'e_d0');
M_.exo_names = char(M_.exo_names, 'e_d1');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_d1');
M_.exo_names_long = char(M_.exo_names_long, 'e_d1');
M_.exo_names = char(M_.exo_names, 'e_d2');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_d2');
M_.exo_names_long = char(M_.exo_names_long, 'e_d2');
M_.exo_names = char(M_.exo_names, 'e_dc0');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_dc0');
M_.exo_names_long = char(M_.exo_names_long, 'e_dc0');
M_.exo_names = char(M_.exo_names, 'e_dc1');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_dc1');
M_.exo_names_long = char(M_.exo_names_long, 'e_dc1');
M_.exo_names = char(M_.exo_names, 'e_dc2');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_dc2');
M_.exo_names_long = char(M_.exo_names_long, 'e_dc2');
M_.exo_names = char(M_.exo_names, 'e_b0');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_b0');
M_.exo_names_long = char(M_.exo_names_long, 'e_b0');
M_.exo_names = char(M_.exo_names, 'e_b1');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_b1');
M_.exo_names_long = char(M_.exo_names_long, 'e_b1');
M_.exo_names = char(M_.exo_names, 'e_b2');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_b2');
M_.exo_names_long = char(M_.exo_names_long, 'e_b2');
M_.exo_names = char(M_.exo_names, 'e_grants0');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_grants0');
M_.exo_names_long = char(M_.exo_names_long, 'e_grants0');
M_.exo_names = char(M_.exo_names, 'e_grants1');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_grants1');
M_.exo_names_long = char(M_.exo_names_long, 'e_grants1');
M_.exo_names = char(M_.exo_names, 'e_grants2');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_grants2');
M_.exo_names_long = char(M_.exo_names_long, 'e_grants2');
M_.exo_names = char(M_.exo_names, 'e_oilr0');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_oilr0');
M_.exo_names_long = char(M_.exo_names_long, 'e_oilr0');
M_.exo_names = char(M_.exo_names, 'e_oilr1');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_oilr1');
M_.exo_names_long = char(M_.exo_names_long, 'e_oilr1');
M_.exo_names = char(M_.exo_names, 'e_oilr2');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_oilr2');
M_.exo_names_long = char(M_.exo_names_long, 'e_oilr2');
M_.exo_names = char(M_.exo_names, 'e_hbar0');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_hbar0');
M_.exo_names_long = char(M_.exo_names_long, 'e_hbar0');
M_.exo_names = char(M_.exo_names, 'e_hbar1');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_hbar1');
M_.exo_names_long = char(M_.exo_names_long, 'e_hbar1');
M_.exo_names = char(M_.exo_names, 'e_hbar2');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_hbar2');
M_.exo_names_long = char(M_.exo_names_long, 'e_hbar2');
M_.exo_names = char(M_.exo_names, 'e_Tbar0');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_Tbar0');
M_.exo_names_long = char(M_.exo_names_long, 'e_Tbar0');
M_.exo_names = char(M_.exo_names, 'e_Tbar1');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_Tbar1');
M_.exo_names_long = char(M_.exo_names_long, 'e_Tbar1');
M_.exo_names = char(M_.exo_names, 'e_Tbar2');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_Tbar2');
M_.exo_names_long = char(M_.exo_names_long, 'e_Tbar2');
M_.exo_names = char(M_.exo_names, 'remit');
M_.exo_names_tex = char(M_.exo_names_tex, 'remit');
M_.exo_names_long = char(M_.exo_names_long, 'remit');
M_.exo_names = char(M_.exo_names, 'px');
M_.exo_names_tex = char(M_.exo_names_tex, 'px');
M_.exo_names_long = char(M_.exo_names_long, 'px');
M_.exo_names = char(M_.exo_names, 'pm');
M_.exo_names_tex = char(M_.exo_names_tex, 'pm');
M_.exo_names_long = char(M_.exo_names_long, 'pm');
M_.exo_names = char(M_.exo_names, 'pmm');
M_.exo_names_tex = char(M_.exo_names_tex, 'pmm');
M_.exo_names_long = char(M_.exo_names_long, 'pmm');
M_.exo_names = char(M_.exo_names, 'dc_target');
M_.exo_names_tex = char(M_.exo_names_tex, 'dc\_target');
M_.exo_names_long = char(M_.exo_names_long, 'dc_target');
M_.exo_names = char(M_.exo_names, 'int_repayment0');
M_.exo_names_tex = char(M_.exo_names_tex, 'int\_repayment0');
M_.exo_names_long = char(M_.exo_names_long, 'int_repayment0');
M_.exo_names = char(M_.exo_names, 'int_repayment1');
M_.exo_names_tex = char(M_.exo_names_tex, 'int\_repayment1');
M_.exo_names_long = char(M_.exo_names_long, 'int_repayment1');
M_.endo_names = 'b';
M_.endo_names_tex = 'b';
M_.endo_names_long = 'b';
M_.endo_names = char(M_.endo_names, 'bstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'bstar');
M_.endo_names_long = char(M_.endo_names_long, 'bstar');
M_.endo_names = char(M_.endo_names, 'd');
M_.endo_names_tex = char(M_.endo_names_tex, 'd');
M_.endo_names_long = char(M_.endo_names_long, 'd');
M_.endo_names = char(M_.endo_names, 'dc');
M_.endo_names_tex = char(M_.endo_names_tex, 'dc');
M_.endo_names_long = char(M_.endo_names_long, 'dc');
M_.endo_names = char(M_.endo_names, 'dplot');
M_.endo_names_tex = char(M_.endo_names_tex, 'dplot');
M_.endo_names_long = char(M_.endo_names_long, 'dplot');
M_.endo_names = char(M_.endo_names, 'e');
M_.endo_names_tex = char(M_.endo_names_tex, 'e');
M_.endo_names_long = char(M_.endo_names_long, 'e');
M_.endo_names = char(M_.endo_names, 'eh');
M_.endo_names_tex = char(M_.endo_names_tex, 'eh');
M_.endo_names_long = char(M_.endo_names_long, 'eh');
M_.endo_names = char(M_.endo_names, 'GAP');
M_.endo_names_tex = char(M_.endo_names_tex, 'GAP');
M_.endo_names_long = char(M_.endo_names_long, 'GAP');
M_.endo_names = char(M_.endo_names, 'grants');
M_.endo_names_tex = char(M_.endo_names_tex, 'grants');
M_.endo_names_long = char(M_.endo_names_long, 'grants');
M_.endo_names = char(M_.endo_names, 'growth_plot');
M_.endo_names_tex = char(M_.endo_names_tex, 'growth\_plot');
M_.endo_names_long = char(M_.endo_names_long, 'growth_plot');
M_.endo_names = char(M_.endo_names, 'h');
M_.endo_names_tex = char(M_.endo_names_tex, 'h');
M_.endo_names_long = char(M_.endo_names_long, 'h');
M_.endo_names = char(M_.endo_names, 'in');
M_.endo_names_tex = char(M_.endo_names_tex, 'in');
M_.endo_names_long = char(M_.endo_names_long, 'in');
M_.endo_names = char(M_.endo_names, 'ix');
M_.endo_names_tex = char(M_.endo_names_tex, 'ix');
M_.endo_names_long = char(M_.endo_names_long, 'ix');
M_.endo_names = char(M_.endo_names, 'iz');
M_.endo_names_tex = char(M_.endo_names_tex, 'iz');
M_.endo_names_long = char(M_.endo_names_long, 'iz');
M_.endo_names = char(M_.endo_names, 'kn');
M_.endo_names_tex = char(M_.endo_names_tex, 'kn');
M_.endo_names_long = char(M_.endo_names_long, 'kn');
M_.endo_names = char(M_.endo_names, 'kx');
M_.endo_names_tex = char(M_.endo_names_tex, 'kx');
M_.endo_names_long = char(M_.endo_names_long, 'kx');
M_.endo_names = char(M_.endo_names, 'L_n');
M_.endo_names_tex = char(M_.endo_names_tex, 'L\_n');
M_.endo_names_long = char(M_.endo_names_long, 'L_n');
M_.endo_names = char(M_.endo_names, 'L_x');
M_.endo_names_tex = char(M_.endo_names_tex, 'L\_x');
M_.endo_names_long = char(M_.endo_names_long, 'L_x');
M_.endo_names = char(M_.endo_names, 'netbwconc');
M_.endo_names_tex = char(M_.endo_names_tex, 'netbwconc');
M_.endo_names_long = char(M_.endo_names_long, 'netbwconc');
M_.endo_names = char(M_.endo_names, 'oilr');
M_.endo_names_tex = char(M_.endo_names_tex, 'oilr');
M_.endo_names_long = char(M_.endo_names_long, 'oilr');
M_.endo_names = char(M_.endo_names, 'p');
M_.endo_names_tex = char(M_.endo_names_tex, 'p');
M_.endo_names_long = char(M_.endo_names_long, 'p');
M_.endo_names = char(M_.endo_names, 'pk');
M_.endo_names_tex = char(M_.endo_names_tex, 'pk');
M_.endo_names_long = char(M_.endo_names_long, 'pk');
M_.endo_names = char(M_.endo_names, 'pn');
M_.endo_names_tex = char(M_.endo_names_tex, 'pn');
M_.endo_names_long = char(M_.endo_names_long, 'pn');
M_.endo_names = char(M_.endo_names, 'pz');
M_.endo_names_tex = char(M_.endo_names_tex, 'pz');
M_.endo_names_long = char(M_.endo_names_long, 'pz');
M_.endo_names = char(M_.endo_names, 'qn');
M_.endo_names_tex = char(M_.endo_names_tex, 'qn');
M_.endo_names_long = char(M_.endo_names_long, 'qn');
M_.endo_names = char(M_.endo_names, 'qx');
M_.endo_names_tex = char(M_.endo_names_tex, 'qx');
M_.endo_names_long = char(M_.endo_names_long, 'qx');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'r_d');
M_.endo_names_tex = char(M_.endo_names_tex, 'r\_d');
M_.endo_names_long = char(M_.endo_names_long, 'r_d');
M_.endo_names = char(M_.endo_names, 'rstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'rstar');
M_.endo_names_long = char(M_.endo_names_long, 'rstar');
M_.endo_names = char(M_.endo_names, 'r_dc');
M_.endo_names_tex = char(M_.endo_names_tex, 'r\_dc');
M_.endo_names_long = char(M_.endo_names_long, 'r_dc');
M_.endo_names = char(M_.endo_names, 'rn');
M_.endo_names_tex = char(M_.endo_names_tex, 'rn');
M_.endo_names_long = char(M_.endo_names_long, 'rn');
M_.endo_names = char(M_.endo_names, 'rx');
M_.endo_names_tex = char(M_.endo_names_tex, 'rx');
M_.endo_names_long = char(M_.endo_names_long, 'rx');
M_.endo_names = char(M_.endo_names, 'Rz');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rz');
M_.endo_names_long = char(M_.endo_names_long, 'Rz');
M_.endo_names = char(M_.endo_names, 'T');
M_.endo_names_tex = char(M_.endo_names_tex, 'T');
M_.endo_names_long = char(M_.endo_names_long, 'T');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names_long = char(M_.endo_names_long, 'w');
M_.endo_names = char(M_.endo_names, 'ynom');
M_.endo_names_tex = char(M_.endo_names_tex, 'ynom');
M_.endo_names_long = char(M_.endo_names_long, 'ynom');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names_long = char(M_.endo_names_long, 'z');
M_.endo_names = char(M_.endo_names, 'ze');
M_.endo_names_tex = char(M_.endo_names_tex, 'ze');
M_.endo_names_long = char(M_.endo_names_long, 'ze');
M_.param_names = 'a_k';
M_.param_names_tex = 'a\_k';
M_.param_names_long = 'a_k';
M_.param_names = char(M_.param_names, 'a_n');
M_.param_names_tex = char(M_.param_names_tex, 'a\_n');
M_.param_names_long = char(M_.param_names_long, 'a_n');
M_.param_names = char(M_.param_names, 'a_ratio');
M_.param_names_tex = char(M_.param_names_tex, 'a\_ratio');
M_.param_names_long = char(M_.param_names_long, 'a_ratio');
M_.param_names = char(M_.param_names, 'a_x');
M_.param_names_tex = char(M_.param_names_tex, 'a\_x');
M_.param_names_long = char(M_.param_names_long, 'a_x');
M_.param_names = char(M_.param_names, 'a_z');
M_.param_names_tex = char(M_.param_names_tex, 'a\_z');
M_.param_names_long = char(M_.param_names_long, 'a_z');
M_.param_names = char(M_.param_names, 'alpha_k');
M_.param_names_tex = char(M_.param_names_tex, 'alpha\_k');
M_.param_names_long = char(M_.param_names_long, 'alpha_k');
M_.param_names = char(M_.param_names, 'alpha_n');
M_.param_names_tex = char(M_.param_names_tex, 'alpha\_n');
M_.param_names_long = char(M_.param_names_long, 'alpha_n');
M_.param_names = char(M_.param_names, 'alpha_x');
M_.param_names_tex = char(M_.param_names_tex, 'alpha\_x');
M_.param_names_long = char(M_.param_names_long, 'alpha_x');
M_.param_names = char(M_.param_names, 'alpha_z');
M_.param_names_tex = char(M_.param_names_tex, 'alpha\_z');
M_.param_names_long = char(M_.param_names_long, 'alpha_z');
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'beta_t');
M_.param_names_tex = char(M_.param_names_tex, 'beta\_t');
M_.param_names_long = char(M_.param_names_long, 'beta_t');
M_.param_names = char(M_.param_names, 'bo');
M_.param_names_tex = char(M_.param_names_tex, 'bo');
M_.param_names_long = char(M_.param_names_long, 'bo');
M_.param_names = char(M_.param_names, 'bstaro');
M_.param_names_tex = char(M_.param_names_tex, 'bstaro');
M_.param_names_long = char(M_.param_names_long, 'bstaro');
M_.param_names = char(M_.param_names, 'd_o');
M_.param_names_tex = char(M_.param_names_tex, 'd\_o');
M_.param_names_long = char(M_.param_names_long, 'd_o');
M_.param_names = char(M_.param_names, 'dco');
M_.param_names_tex = char(M_.param_names_tex, 'dco');
M_.param_names_long = char(M_.param_names_long, 'dco');
M_.param_names = char(M_.param_names, 'delta_n');
M_.param_names_tex = char(M_.param_names_tex, 'delta\_n');
M_.param_names_long = char(M_.param_names_long, 'delta_n');
M_.param_names = char(M_.param_names, 'delta_x');
M_.param_names_tex = char(M_.param_names_tex, 'delta\_x');
M_.param_names_long = char(M_.param_names_long, 'delta_x');
M_.param_names = char(M_.param_names, 'delta_z');
M_.param_names_tex = char(M_.param_names_tex, 'delta\_z');
M_.param_names_long = char(M_.param_names_long, 'delta_z');
M_.param_names = char(M_.param_names, 'eho');
M_.param_names_tex = char(M_.param_names_tex, 'eho');
M_.param_names_long = char(M_.param_names_long, 'eho');
M_.param_names = char(M_.param_names, 'eo');
M_.param_names_tex = char(M_.param_names_tex, 'eo');
M_.param_names_long = char(M_.param_names_long, 'eo');
M_.param_names = char(M_.param_names, 'epsilon');
M_.param_names_tex = char(M_.param_names_tex, 'epsilon');
M_.param_names_long = char(M_.param_names_long, 'epsilon');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, 'eta');
M_.param_names_long = char(M_.param_names_long, 'eta');
M_.param_names = char(M_.param_names, 'etag');
M_.param_names_tex = char(M_.param_names_tex, 'etag');
M_.param_names_long = char(M_.param_names_long, 'etag');
M_.param_names = char(M_.param_names, 'fo');
M_.param_names_tex = char(M_.param_names_tex, 'fo');
M_.param_names_long = char(M_.param_names_long, 'fo');
M_.param_names = char(M_.param_names, 'g');
M_.param_names_tex = char(M_.param_names_tex, 'g');
M_.param_names_long = char(M_.param_names_long, 'g');
M_.param_names = char(M_.param_names, 'gama_m');
M_.param_names_tex = char(M_.param_names_tex, 'gama\_m');
M_.param_names_long = char(M_.param_names_long, 'gama_m');
M_.param_names = char(M_.param_names, 'gama_n');
M_.param_names_tex = char(M_.param_names_tex, 'gama\_n');
M_.param_names_long = char(M_.param_names_long, 'gama_n');
M_.param_names = char(M_.param_names, 'gama_x');
M_.param_names_tex = char(M_.param_names_tex, 'gama\_x');
M_.param_names_long = char(M_.param_names_long, 'gama_x');
M_.param_names = char(M_.param_names, 'grantso');
M_.param_names_tex = char(M_.param_names_tex, 'grantso');
M_.param_names_long = char(M_.param_names_long, 'grantso');
M_.param_names = char(M_.param_names, 'hbar');
M_.param_names_tex = char(M_.param_names_tex, 'hbar');
M_.param_names_long = char(M_.param_names_long, 'hbar');
M_.param_names = char(M_.param_names, 'ho');
M_.param_names_tex = char(M_.param_names_tex, 'ho');
M_.param_names_long = char(M_.param_names_long, 'ho');
M_.param_names = char(M_.param_names, 'lambda');
M_.param_names_tex = char(M_.param_names_tex, 'lambda');
M_.param_names_long = char(M_.param_names_long, 'lambda');
M_.param_names = char(M_.param_names, 'lambda1');
M_.param_names_tex = char(M_.param_names_tex, 'lambda1');
M_.param_names_long = char(M_.param_names_long, 'lambda1');
M_.param_names = char(M_.param_names, 'lambda2');
M_.param_names_tex = char(M_.param_names_tex, 'lambda2');
M_.param_names_long = char(M_.param_names_long, 'lambda2');
M_.param_names = char(M_.param_names, 'lambda3');
M_.param_names_tex = char(M_.param_names_tex, 'lambda3');
M_.param_names_long = char(M_.param_names_long, 'lambda3');
M_.param_names = char(M_.param_names, 'lambda4');
M_.param_names_tex = char(M_.param_names_tex, 'lambda4');
M_.param_names_long = char(M_.param_names_long, 'lambda4');
M_.param_names = char(M_.param_names, 'Lo');
M_.param_names_tex = char(M_.param_names_tex, 'Lo');
M_.param_names_long = char(M_.param_names_long, 'Lo');
M_.param_names = char(M_.param_names, 'm');
M_.param_names_tex = char(M_.param_names_tex, 'm');
M_.param_names_long = char(M_.param_names_long, 'm');
M_.param_names = char(M_.param_names, 'miu');
M_.param_names_tex = char(M_.param_names_tex, 'miu');
M_.param_names_long = char(M_.param_names_long, 'miu');
M_.param_names = char(M_.param_names, 'nu');
M_.param_names_tex = char(M_.param_names_tex, 'nu');
M_.param_names_long = char(M_.param_names_long, 'nu');
M_.param_names = char(M_.param_names, 'nu_n');
M_.param_names_tex = char(M_.param_names_tex, 'nu\_n');
M_.param_names_long = char(M_.param_names_long, 'nu_n');
M_.param_names = char(M_.param_names, 'nu_x');
M_.param_names_tex = char(M_.param_names_tex, 'nu\_x');
M_.param_names_long = char(M_.param_names_long, 'nu_x');
M_.param_names = char(M_.param_names, 'nug');
M_.param_names_tex = char(M_.param_names_tex, 'nug');
M_.param_names_long = char(M_.param_names_long, 'nug');
M_.param_names = char(M_.param_names, 'oilro');
M_.param_names_tex = char(M_.param_names_tex, 'oilro');
M_.param_names_long = char(M_.param_names_long, 'oilro');
M_.param_names = char(M_.param_names, 'omega');
M_.param_names_tex = char(M_.param_names_tex, 'omega');
M_.param_names_long = char(M_.param_names_long, 'omega');
M_.param_names = char(M_.param_names, 'P_zo');
M_.param_names_tex = char(M_.param_names_tex, 'P\_zo');
M_.param_names_long = char(M_.param_names_long, 'P_zo');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, 'phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'psi_n');
M_.param_names_tex = char(M_.param_names_tex, 'psi\_n');
M_.param_names_long = char(M_.param_names_long, 'psi_n');
M_.param_names = char(M_.param_names, 'psi_x');
M_.param_names_tex = char(M_.param_names_tex, 'psi\_x');
M_.param_names_long = char(M_.param_names_long, 'psi_x');
M_.param_names = char(M_.param_names, 'q_no');
M_.param_names_tex = char(M_.param_names_tex, 'q\_no');
M_.param_names_long = char(M_.param_names_long, 'q_no');
M_.param_names = char(M_.param_names, 'q_xo');
M_.param_names_tex = char(M_.param_names_tex, 'q\_xo');
M_.param_names_long = char(M_.param_names_long, 'q_xo');
M_.param_names = char(M_.param_names, 'r_dco');
M_.param_names_tex = char(M_.param_names_tex, 'r\_dco');
M_.param_names_long = char(M_.param_names_long, 'r_dco');
M_.param_names = char(M_.param_names, 'R_zo');
M_.param_names_tex = char(M_.param_names_tex, 'R\_zo');
M_.param_names_long = char(M_.param_names_long, 'R_zo');
M_.param_names = char(M_.param_names, 'remito');
M_.param_names_tex = char(M_.param_names_tex, 'remito');
M_.param_names_long = char(M_.param_names_long, 'remito');
M_.param_names = char(M_.param_names, 'rho_m');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_m');
M_.param_names_long = char(M_.param_names_long, 'rho_m');
M_.param_names = char(M_.param_names, 'rho_x');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_x');
M_.param_names_long = char(M_.param_names_long, 'rho_x');
M_.param_names = char(M_.param_names, 'ro');
M_.param_names_tex = char(M_.param_names_tex, 'ro');
M_.param_names_long = char(M_.param_names_long, 'ro');
M_.param_names = char(M_.param_names, 'r_f');
M_.param_names_tex = char(M_.param_names_tex, 'r\_f');
M_.param_names_long = char(M_.param_names_long, 'r_f');
M_.param_names = char(M_.param_names, 's');
M_.param_names_tex = char(M_.param_names_tex, 's');
M_.param_names_long = char(M_.param_names_long, 's');
M_.param_names = char(M_.param_names, 's_s');
M_.param_names_tex = char(M_.param_names_tex, 's\_s');
M_.param_names_long = char(M_.param_names_long, 's_s');
M_.param_names = char(M_.param_names, 'share_b');
M_.param_names_tex = char(M_.param_names_tex, 'share\_b');
M_.param_names_long = char(M_.param_names_long, 'share_b');
M_.param_names = char(M_.param_names, 'share_bstar');
M_.param_names_tex = char(M_.param_names_tex, 'share\_bstar');
M_.param_names_long = char(M_.param_names_long, 'share_bstar');
M_.param_names = char(M_.param_names, 'share_d');
M_.param_names_tex = char(M_.param_names_tex, 'share\_d');
M_.param_names_long = char(M_.param_names_long, 'share_d');
M_.param_names = char(M_.param_names, 'sigma_n');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_n');
M_.param_names_long = char(M_.param_names_long, 'sigma_n');
M_.param_names = char(M_.param_names, 'sigma_x');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_x');
M_.param_names_long = char(M_.param_names_long, 'sigma_x');
M_.param_names = char(M_.param_names, 'tau');
M_.param_names_tex = char(M_.param_names_tex, 'tau');
M_.param_names_long = char(M_.param_names_long, 'tau');
M_.param_names = char(M_.param_names, 'Tbar');
M_.param_names_tex = char(M_.param_names_tex, 'Tbar');
M_.param_names_long = char(M_.param_names_long, 'Tbar');
M_.param_names = char(M_.param_names, 'theta_hbar');
M_.param_names_tex = char(M_.param_names_tex, 'theta\_hbar');
M_.param_names_long = char(M_.param_names_long, 'theta_hbar');
M_.param_names = char(M_.param_names, 'theta_Tbar');
M_.param_names_tex = char(M_.param_names_tex, 'theta\_Tbar');
M_.param_names_long = char(M_.param_names_long, 'theta_Tbar');
M_.param_names = char(M_.param_names, 'To');
M_.param_names_tex = char(M_.param_names_tex, 'To');
M_.param_names_long = char(M_.param_names_long, 'To');
M_.param_names = char(M_.param_names, 'VA_n');
M_.param_names_tex = char(M_.param_names_tex, 'VA\_n');
M_.param_names_long = char(M_.param_names_long, 'VA_n');
M_.param_names = char(M_.param_names, 'xi_n');
M_.param_names_tex = char(M_.param_names_tex, 'xi\_n');
M_.param_names_long = char(M_.param_names_long, 'xi_n');
M_.param_names = char(M_.param_names, 'xi_x');
M_.param_names_tex = char(M_.param_names_tex, 'xi\_x');
M_.param_names_long = char(M_.param_names_long, 'xi_x');
M_.param_names = char(M_.param_names, 'yo');
M_.param_names_tex = char(M_.param_names_tex, 'yo');
M_.param_names_long = char(M_.param_names_long, 'yo');
M_.param_names = char(M_.param_names, 'zeo');
M_.param_names_tex = char(M_.param_names_tex, 'zeo');
M_.param_names_long = char(M_.param_names_long, 'zeo');
M_.param_names = char(M_.param_names, 'zo');
M_.param_names_tex = char(M_.param_names_tex, 'zo');
M_.param_names_long = char(M_.param_names_long, 'zo');
M_.exo_det_nbr = 0;
M_.exo_nbr = 31;
M_.endo_nbr = 38;
M_.param_nbr = 76;
M_.orig_endo_nbr = 38;
M_.aux_vars = [];
M_.Sigma_e = zeros(31, 31);
M_.Correlation_matrix = eye(31, 31);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('dsf_static');
erase_compiled_function('dsf_dynamic');
M_.lead_lag_incidence = [
 1 15 0;
 2 16 0;
 3 17 0;
 4 18 0;
 5 19 0;
 0 20 53;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 54;
 0 26 55;
 0 27 56;
 0 28 0;
 6 29 0;
 7 30 0;
 0 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 57;
 0 36 58;
 0 37 0;
 0 38 0;
 8 39 0;
 9 40 0;
 10 41 0;
 0 42 0;
 11 43 0;
 12 44 0;
 0 45 59;
 0 46 60;
 0 47 0;
 0 48 0;
 0 49 0;
 0 50 0;
 13 51 0;
 14 52 0;]';
M_.nstatic = 16;
M_.nfwrd   = 8;
M_.npred   = 14;
M_.nboth   = 0;
M_.nsfwrd   = 8;
M_.nspred   = 14;
M_.ndynamic   = 22;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:31];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(38, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(31, 1);
M_.params = NaN(76, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 219;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
load params.mat;          
for i=1:length(M_.params)
deep_parameter_name = M_.param_names(i,:);
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])
end   
options_.maxit = itermax;
load steady_state_values.mat;
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 34 ) = T_ini;
oo_.steady_state( 26 ) = q_x_ini;
oo_.steady_state( 25 ) = q_n_ini;
oo_.steady_state( 16 ) = k_x_ini;
oo_.steady_state( 15 ) = k_n_ini;
oo_.steady_state( 18 ) = L_x_ini;
oo_.steady_state( 17 ) = L_n_ini;
oo_.steady_state( 37 ) = z_ini;
oo_.steady_state( 38 ) = ze_ini;
oo_.steady_state( 22 ) = P_k_ini;
oo_.steady_state( 24 ) = P_z_ini;
oo_.steady_state( 6 ) = e_ini;
oo_.steady_state( 7 ) = eh_ini;
oo_.steady_state( 35 ) = w_ini;
oo_.steady_state( 23 ) = P_n_ini;
oo_.steady_state( 21 ) = P_ini;
oo_.steady_state( 13 ) = i_x_ini;
oo_.steady_state( 12 ) = i_n_ini;
oo_.steady_state( 11 ) = h_ini;
oo_.steady_state( 32 ) = r_x_ini;
oo_.steady_state( 31 ) = r_n_ini;
oo_.steady_state( 14 ) = i_z_ini;
oo_.steady_state( 27 ) = r_ini;
oo_.steady_state( 2 ) = bstar_ini;
oo_.steady_state( 33 ) = R_z_ini;
oo_.steady_state( 1 ) = M_.params(12);
oo_.steady_state( 3 ) = M_.params(14);
oo_.steady_state( 4 ) = M_.params(15);
oo_.steady_state( 5 ) = M_.params(14);
oo_.exo_steady_state( 7 ) = M_.params(15)*M_.params(25)/(1+M_.params(25));
oo_.exo_steady_state( 25 ) = M_.params(54);
oo_.steady_state( 9 ) = M_.params(29);
oo_.steady_state( 20 ) = M_.params(44);
oo_.steady_state( 36 ) = M_.params(74);
oo_.steady_state( 10 ) = M_.params(25);
oo_.steady_state( 19 ) = 0;
oo_.steady_state( 30 ) = M_.params(58)+M_.params(43);
oo_.steady_state( 29 ) = oo_.steady_state(30)+M_.params(40);
oo_.exo_steady_state( 26 ) = 1;
oo_.exo_steady_state( 27 ) = 1;
oo_.exo_steady_state( 28 ) = 1;
oo_.steady_state( 28 ) = 0;
oo_.steady_state( 8 ) = 0;
oo_.exo_steady_state( 29 ) = M_.params(15);
if M_.exo_nbr > 0;
	oo_.exo_simul = [ones(M_.maximum_lag,1)*oo_.exo_steady_state'];
end;
if M_.exo_det_nbr > 0;
	oo_.exo_det_simul = [ones(M_.maximum_lag,1)*oo_.exo_det_steady_state'];
end;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
make_ex_;
set_shocks(0,1, 1, 0);
set_shocks(0,2, 1, 0);
set_shocks(0,3, 1, 0);
set_shocks(0,4, 1, 0);
set_shocks(0,5, 1, 0);
set_shocks(0,6, 1, 0);
set_shocks(0,7, 1, 0);
set_shocks(0,8, 1, 0);
set_shocks(0,9, 1, 0);
set_shocks(0,10, 1, 0);
set_shocks(0,11, 1, 0);
set_shocks(0,12, 1, 0);
set_shocks(0,13, 1, 0);
set_shocks(0,14, 1, 0);
set_shocks(0,15, 1, 0);
set_shocks(0,16, 1, 0);
set_shocks(0,17, 1, 0);
set_shocks(0,18, 1, 0);
set_shocks(0,19, 1, 0);
set_shocks(0,20, 1, 0);
set_shocks(0,21, 1, 0);
set_shocks(0,22, 1, 0);
set_shocks(0,23, 1, 0);
set_shocks(0,24, 1, 0);
set_shocks(0,25, 1, 0);
set_shocks(0,26, 1, 0);
set_shocks(0,27, 1, 0);
set_shocks(0,28, 1, 0);
set_shocks(0,29, 1, 0);
set_shocks(0,30, 1, 0);
set_shocks(0,1, 4, 0);
set_shocks(0,2, 4, 0);
set_shocks(0,3, 4, 0);
set_shocks(0,4, 4, 0);
set_shocks(0,5, 4, 0);
set_shocks(0,6, 4, 0);
set_shocks(0,7, 4, 0);
set_shocks(0,8, 4, 0);
set_shocks(0,9, 4, 0);
set_shocks(0,10, 4, 0);
set_shocks(0,11, 4, 0);
set_shocks(0,12, 4, 0);
set_shocks(0,13, 4, 0);
set_shocks(0,14, 4, 0);
set_shocks(0,15, 4, 0);
set_shocks(0,16, 4, 0);
set_shocks(0,17, 4, 0);
set_shocks(0,18, 4, 0);
set_shocks(0,19, 4, 0);
set_shocks(0,20, 4, 0);
set_shocks(0,21, 4, 0);
set_shocks(0,22, 4, 0);
set_shocks(0,23, 4, 0);
set_shocks(0,24, 4, 0);
set_shocks(0,25, 4, 0);
set_shocks(0,26, 4, 0);
set_shocks(0,27, 4, 0);
set_shocks(0,28, 4, 0);
set_shocks(0,29, 4, 0);
set_shocks(0,30, 4, 0);
set_shocks(0,1, 7, 0);
set_shocks(0,2, 7, 0);
set_shocks(0,3, 7, 0);
set_shocks(0,4, 7, 0);
set_shocks(0,5, 7, 0);
set_shocks(0,6, 7, 0);
set_shocks(0,7, 7, 0);
set_shocks(0,8, 7, 0);
set_shocks(0,9, 7, 0);
set_shocks(0,10, 7, 0);
set_shocks(0,11, 7, 0);
set_shocks(0,12, 7, 0);
set_shocks(0,13, 7, 0);
set_shocks(0,14, 7, 0);
set_shocks(0,15, 7, 0);
set_shocks(0,16, 7, 0);
set_shocks(0,17, 7, 0);
set_shocks(0,18, 7, 0);
set_shocks(0,19, 7, 0);
set_shocks(0,20, 7, 0);
set_shocks(0,21, 7, 0);
set_shocks(0,22, 7, 0);
set_shocks(0,23, 7, 0);
set_shocks(0,24, 7, 0);
set_shocks(0,25, 7, 0);
set_shocks(0,26, 7, 0);
set_shocks(0,27, 7, 0);
set_shocks(0,28, 7, 0);
set_shocks(0,29, 7, 0);
set_shocks(0,30, 7, 0);
set_shocks(0,1, 13, 0);
set_shocks(0,2, 13, 0);
set_shocks(0,3, 13, 0);
set_shocks(0,4, 13, 0);
set_shocks(0,5, 13, 0);
set_shocks(0,6, 13, 0);
set_shocks(0,7, 13, 0);
set_shocks(0,8, 13, 0);
set_shocks(0,9, 13, 0);
set_shocks(0,10, 13, 0);
set_shocks(0,11, 13, 0);
set_shocks(0,12, 13, 0);
set_shocks(0,13, 13, 0);
set_shocks(0,14, 13, 0);
set_shocks(0,15, 13, 0);
set_shocks(0,16, 13, 0);
set_shocks(0,17, 13, 0);
set_shocks(0,18, 13, 0);
set_shocks(0,19, 13, 0);
set_shocks(0,20, 13, 0);
set_shocks(0,21, 13, 0);
set_shocks(0,22, 13, 0);
set_shocks(0,23, 13, 0);
set_shocks(0,24, 13, 0);
set_shocks(0,25, 13, 0);
set_shocks(0,26, 13, 0);
set_shocks(0,27, 13, 0);
set_shocks(0,28, 13, 0);
set_shocks(0,29, 13, 0);
set_shocks(0,30, 13, 0);
set_shocks(0,1, 16, 0);
set_shocks(0,2, 16, 0);
set_shocks(0,3, 16, 0);
set_shocks(0,4, 16, 0);
set_shocks(0,5, 16, 0);
set_shocks(0,6, 16, 0);
set_shocks(0,7, 16, 0);
set_shocks(0,8, 16, 0);
set_shocks(0,9, 16, 0);
set_shocks(0,10, 16, 0);
set_shocks(0,11, 16, 0);
set_shocks(0,12, 16, 0);
set_shocks(0,13, 16, 0);
set_shocks(0,14, 16, 0);
set_shocks(0,15, 16, 0);
set_shocks(0,16, 16, 0);
set_shocks(0,17, 16, 0);
set_shocks(0,18, 16, 0);
set_shocks(0,19, 16, 0);
set_shocks(0,20, 16, 0);
set_shocks(0,21, 16, 0);
set_shocks(0,22, 16, 0);
set_shocks(0,23, 16, 0);
set_shocks(0,24, 16, 0);
set_shocks(0,25, 16, 0);
set_shocks(0,26, 16, 0);
set_shocks(0,27, 16, 0);
set_shocks(0,28, 16, 0);
set_shocks(0,29, 16, 0);
set_shocks(0,30, 16, 0);
set_shocks(0,1, 19, 0);
set_shocks(0,2, 19, 0);
set_shocks(0,3, 19, 0);
set_shocks(0,4, 19, 0);
set_shocks(0,5, 19, 0);
set_shocks(0,6, 19, 0);
set_shocks(0,7, 19, 0);
set_shocks(0,8, 19, 0);
set_shocks(0,9, 19, 0);
set_shocks(0,10, 19, 0);
set_shocks(0,11, 19, 0);
set_shocks(0,12, 19, 0);
set_shocks(0,13, 19, 0);
set_shocks(0,14, 19, 0);
set_shocks(0,15, 19, 0);
set_shocks(0,16, 19, 0);
set_shocks(0,17, 19, 0);
set_shocks(0,18, 19, 0);
set_shocks(0,19, 19, 0);
set_shocks(0,20, 19, 0);
set_shocks(0,21, 19, 0);
set_shocks(0,22, 19, 0);
set_shocks(0,23, 19, 0);
set_shocks(0,24, 19, 0);
set_shocks(0,25, 19, 0);
set_shocks(0,26, 19, 0);
set_shocks(0,27, 19, 0);
set_shocks(0,28, 19, 0);
set_shocks(0,29, 19, 0);
set_shocks(0,30, 19, 0);
set_shocks(0,1, 22, 0);
set_shocks(0,2, 22, 0);
set_shocks(0,3, 22, 0);
set_shocks(0,4, 22, 0);
set_shocks(0,5, 22, 0);
set_shocks(0,6, 22, 0);
set_shocks(0,7, 22, 0);
set_shocks(0,8, 22, 0);
set_shocks(0,9, 22, 0);
set_shocks(0,10, 22, 0);
set_shocks(0,11, 22, 0);
set_shocks(0,12, 22, 0);
set_shocks(0,13, 22, 0);
set_shocks(0,14, 22, 0);
set_shocks(0,15, 22, 0);
set_shocks(0,16, 22, 0);
set_shocks(0,17, 22, 0);
set_shocks(0,18, 22, 0);
set_shocks(0,19, 22, 0);
set_shocks(0,20, 22, 0);
set_shocks(0,21, 22, 0);
set_shocks(0,22, 22, 0);
set_shocks(0,23, 22, 0);
set_shocks(0,24, 22, 0);
set_shocks(0,25, 22, 0);
set_shocks(0,26, 22, 0);
set_shocks(0,27, 22, 0);
set_shocks(0,28, 22, 0);
set_shocks(0,29, 22, 0);
set_shocks(0,30, 22, 0);
M_.exo_det_length = 0;
M_.sigma_e_is_diagonal = 1;
options_.debug = 1;
options_.periods = 1000;
simul();
save('dsf_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('dsf_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('dsf_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('dsf_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('dsf_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
disp('Note: 1 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
