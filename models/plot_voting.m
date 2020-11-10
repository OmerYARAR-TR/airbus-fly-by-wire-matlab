function plot_voting(out)
figure;
hold on;
plot(out.fbw_output.pitch.law_normal.eta_dot_pos_s);
plot(out.fbw_output.pitch.law_protection.attitude_min.eta_dot_pos_s);
plot(out.fbw_output.pitch.law_protection.attitude_max.eta_dot_pos_s);
plot(out.fbw_output.pitch.vote.eta_dot_pos_s, 'r', 'LineWidth', 1);
hold off;
legend('C*','\Theta_{prot_{min}}', '\Theta_{prot_{max}}', 'vote');
