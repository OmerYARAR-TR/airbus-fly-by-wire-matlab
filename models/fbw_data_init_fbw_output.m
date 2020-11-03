%% ------------------------------------------------------------------
%  You can modify the values of the fields in fbw_output_MATLABStruct
%  and evaluate this cell to create/update this structure
%  in the MATLAB base workspace.
% -------------------------------------------------------------------


fbw_output_MATLABStruct = struct;
fbw_output_MATLABStruct.sim = struct;
fbw_output_MATLABStruct.sim.raw = struct;
fbw_output_MATLABStruct.sim.raw.data = struct;
fbw_output_MATLABStruct.sim.raw.data.nz_g = 0;
fbw_output_MATLABStruct.sim.raw.data.Theta_deg = 0;
fbw_output_MATLABStruct.sim.raw.data.Phi_deg = 0;
fbw_output_MATLABStruct.sim.raw.data.qk_rad_s = 0;
fbw_output_MATLABStruct.sim.raw.data.rk_rad_s = 0;
fbw_output_MATLABStruct.sim.raw.data.pk_rad_s = 0;
fbw_output_MATLABStruct.sim.raw.data.q_dot_rad_s2 = 0;
fbw_output_MATLABStruct.sim.raw.data.r_dot_rad_s2 = 0;
fbw_output_MATLABStruct.sim.raw.data.p_dot_rad_s2 = 0;
fbw_output_MATLABStruct.sim.raw.data.iH_deg = 0;
fbw_output_MATLABStruct.sim.raw.data.Vk_kt = 0;
fbw_output_MATLABStruct.sim.raw.data.radio_height_ft = 0;
fbw_output_MATLABStruct.sim.raw.data.CG_percent_MAC = 0;
fbw_output_MATLABStruct.sim.raw.input = struct;
fbw_output_MATLABStruct.sim.raw.input.delta_eta_pos = 0;
fbw_output_MATLABStruct.sim.raw.input.delta_xi_pos = 0;
fbw_output_MATLABStruct.sim.raw.input.delta_zeta_pos = 0;
fbw_output_MATLABStruct.sim.raw.output = struct;
fbw_output_MATLABStruct.sim.raw.output.eta_pos = 0;
fbw_output_MATLABStruct.sim.raw.output.iH_deg = 0;
fbw_output_MATLABStruct.sim.raw.output.xi_pos = 0;
fbw_output_MATLABStruct.sim.raw.output.zeta_pos = 0;
fbw_output_MATLABStruct.sim.data = struct;
fbw_output_MATLABStruct.sim.data.nz_g = 0;
fbw_output_MATLABStruct.sim.data.Theta_deg = 0;
fbw_output_MATLABStruct.sim.data.Phi_deg = 0;
fbw_output_MATLABStruct.sim.data.qk_deg_s = 0;
fbw_output_MATLABStruct.sim.data.rk_deg_s = 0;
fbw_output_MATLABStruct.sim.data.pk_deg_s = 0;
fbw_output_MATLABStruct.sim.data.qk_dot_deg_s2 = 0;
fbw_output_MATLABStruct.sim.data.rk_dot_deg_s2 = 0;
fbw_output_MATLABStruct.sim.data.pk_dot_deg_s2 = 0;
fbw_output_MATLABStruct.sim.data.iH_deg = 0;
fbw_output_MATLABStruct.sim.data.Vk_kt = 0;
fbw_output_MATLABStruct.sim.data.radio_height_ft = 0;
fbw_output_MATLABStruct.sim.data.CG_percent_MAC = 0;
fbw_output_MATLABStruct.sim.data_computed = struct;
fbw_output_MATLABStruct.sim.data_computed.on_ground = 0;
fbw_output_MATLABStruct.sim.input = struct;
fbw_output_MATLABStruct.sim.input.delta_eta_pos = 0;
fbw_output_MATLABStruct.sim.input.delta_xi_pos = 0;
fbw_output_MATLABStruct.sim.input.delta_zeta_pos = 0;
fbw_output_MATLABStruct.pitch = struct;
fbw_output_MATLABStruct.pitch.data_computed = struct;
fbw_output_MATLABStruct.pitch.data_computed.in_flight = 0;
fbw_output_MATLABStruct.pitch.data_computed.in_flare = 0;
fbw_output_MATLABStruct.pitch.data_computed.in_flight_gain = 0;
fbw_output_MATLABStruct.pitch.law_normal = struct;
fbw_output_MATLABStruct.pitch.law_normal.Cstar_c_g = 0;
fbw_output_MATLABStruct.pitch.law_normal.Cstar_g = 0;
fbw_output_MATLABStruct.pitch.law_normal.eta_dot_pos_s = 0;
fbw_output_MATLABStruct.pitch.law_protection = struct;
fbw_output_MATLABStruct.pitch.law_protection.attitude_min = struct;
fbw_output_MATLABStruct.pitch.law_protection.attitude_min.eta_dot_pos_s = 0;
fbw_output_MATLABStruct.pitch.law_protection.attitude_max = struct;
fbw_output_MATLABStruct.pitch.law_protection.attitude_max.eta_dot_pos_s = 0;
fbw_output_MATLABStruct.pitch.vote = struct;
fbw_output_MATLABStruct.pitch.vote.eta_dot_pos_s = 0;
fbw_output_MATLABStruct.pitch.integrated = struct;
fbw_output_MATLABStruct.pitch.integrated.eta_pos = 0;
fbw_output_MATLABStruct.pitch.output = struct;
fbw_output_MATLABStruct.pitch.output.eta_pos = 0;
fbw_output_MATLABStruct.pitch.output.iH_deg = 0;
fbw_output_MATLABStruct.roll = struct;
fbw_output_MATLABStruct.roll.data_computed = struct;
fbw_output_MATLABStruct.roll.data_computed.in_flight = 0;
fbw_output_MATLABStruct.roll.data_computed.in_flight_gain = 0;
fbw_output_MATLABStruct.roll.law_normal = struct;
fbw_output_MATLABStruct.roll.law_normal.pk_c_deg_s = 0;
fbw_output_MATLABStruct.roll.law_normal.Phi_c_deg = 0;
fbw_output_MATLABStruct.roll.law_normal.xi_pos = 0;
fbw_output_MATLABStruct.roll.output = struct;
fbw_output_MATLABStruct.roll.output.xi_pos = 0;

