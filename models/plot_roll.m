function plot_roll(out)
figure;
hold on;

subplot(3,1,1);
hold on;
plot(out.fbw_output.roll.law_normal.pk_c_deg_s, 'LineWidth', 1)
plot(out.fbw_output.sim.data.pk_deg_s, 'LineWidth', 1);
legend('p_k_c','p_k');

subplot(3,1,2);
hold on;
plot(out.fbw_output.roll.law_normal.Phi_c_deg, 'LineWidth', 1);
plot(out.fbw_output.sim.data.Phi_deg, 'LineWidth', 1);
legend('\Phi_c', '\Phi');

subplot(3,1,3);
hold on;
plot(out.fbw_output.sim.data_computed.on_ground, 'LineWidth', 1);
plot(out.fbw_output.roll.data_computed.in_flight, 'LineWidth', 1);
plot(out.fbw_output.roll.data_computed.in_flight_gain, 'LineWidth', 1);
legend('on\_ground', 'in\_flight', 'in\_flight\_gain');

hold off;
