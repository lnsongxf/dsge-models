plot_vars = struct();

plot_vars.y = y;
plot_vars.yoil=yoil./y*100;
plot_vars.ynon=ynon./y*100;
plot_vars.ca=ca./y*100;
plot_vars.tb=tb./y*100;
plot_vars.r=r./y*100;
plot_vars.invk=invk./y*100;
plot_vars.invs=invs./y*100;
plot_vars.ch = ch./y*100;
plot_vars.k = k./y*100;
plot_vars.s = s./y*100;
plot_vars.f = f./y*100;
plot_vars.govh = govh./y*100;

save plot_vars.mat plot_vars
