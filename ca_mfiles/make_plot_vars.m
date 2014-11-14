plot_vars = struct();

plot_vars.y = y;
plot_vars.ch = ch./y;
plot_vars.k = k./y;
plot_vars.s = s./y;
plot_vars.f = f./y;
plot_vars.ynon = ynon./y;
plot_vars.yoil = yoil./y;
plot_vars.invk = invk./y;
plot_vars.invs = invs./y;
plot_vars.r = r;
plot_vars.tb = tb./y;
plot_vars.ca = ca./y;
plot_vars.govh = govh./y;

save plot_vars.mat plot_vars
