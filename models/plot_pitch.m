function plot_pitch(out)
figure;
hold on;

subplot(2,1,1);
hold on;
plot(out.fbw_output.pitch.law_normal.Cstar_c_g, 'LineWidth', 1);
plot(out.fbw_output.pitch.law_normal.Cstar_g, 'LineWidth', 1);
plot(out.fbw_output.sim.data.nz_g, 'LineWidth', 1);
legend('C*_c','C*', 'n_z');
title('C* law')
grid on;

subplot(2,1,2);
hold on;
plot(out.fbw_output.sim.data_computed.on_ground, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.in_flight, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.in_flare, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.in_flight_gain, 'LineWidth', 1);
legend('on\_ground', 'in\_flight','in\_flare', 'in\_flight\_gain');
title('Signals')
grid on;

hold off;

figure;
hold on;

subplot(2,1,1);
hold on;
plot(out.fbw_output.pitch.output.eta_trim_deg, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.eta_trim_deg_reset_deg, 'LineWidth', 1);
legend('eta_{trim}','eta_{trim} reset');
title('THS')
grid on;

subplot(2,1,2);
hold on;
plot(out.fbw_output.sim.data_computed.on_ground, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.eta_trim_deg_reset, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.eta_trim_deg_should_freeze, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.eta_trim_deg_should_write, 'LineWidth', 1);
legend('on\_ground', 'eta_{trim} (reset)','eta_{trim} (freeze)', 'eta_{trim} (write)');
title('Signals')
grid on;

hold off;


figure;
hold on;

subplot(3,1,1);
hold on;
plot(out.fbw_output.sim.data.Theta_deg, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.flare_Theta_deg, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.flare_Theta_c_deg, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.flare_Theta_c_rate_deg_s, 'LineWidth', 1);
legend('\Theta', '\Theta (filtered)', '\Theta_c', '\Theta_c_rate');
title('Flare')
grid on;

subplot(3,1,2);
hold on;
plot(out.fbw_output.sim.data.H_radio_ft, 'LineWidth', 1);
legend('H_R');
title('Radio Altitude')
grid on;

subplot(3,1,3);
hold on;
plot(out.fbw_output.sim.data_computed.on_ground, 'LineWidth', 1);
plot(out.fbw_output.pitch.data_computed.in_flare, 'LineWidth', 1);
legend('on\_ground', 'in\_flare');
title('Signals')
grid on;

hold off;
