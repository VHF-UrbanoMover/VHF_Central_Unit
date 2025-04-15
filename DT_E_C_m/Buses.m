% -------------------------------------------------------------------
%  Generated by MATLAB on 26-Jul-2022 15:36:45
%  MATLAB version: 9.10.0.1602886 (R2021a)
% -------------------------------------------------------------------
                                      
%% Bus containing information about variables of the traction controller
BUS_TC_MF_CONTROL_INFO = Simulink.Bus;
BUS_TC_MF_CONTROL_INFO.Description = '';
BUS_TC_MF_CONTROL_INFO.DataScope = 'Auto';
BUS_TC_MF_CONTROL_INFO.HeaderFile = '';
BUS_TC_MF_CONTROL_INFO.Alignment = -1;
BUS_TC_MF_CONTROL_INFO.PreserveElementDimensions = false;
saveVarsTmp{1} = Simulink.BusElement;
saveVarsTmp{1}.Name = 'Phi';
saveVarsTmp{1}.Complexity = 'real';
saveVarsTmp{1}.Dimensions = 1;
saveVarsTmp{1}.DataType = 'single';
saveVarsTmp{1}.Min = [];
saveVarsTmp{1}.Max = [];
saveVarsTmp{1}.DimensionsMode = 'Fixed';
saveVarsTmp{1}.SamplingMode = 'Sample based';
saveVarsTmp{1}.DocUnits = '';
saveVarsTmp{1}.Description = '';

saveVarsTmp{1}(2, 1) = Simulink.BusElement;
saveVarsTmp{1}(2, 1).Name = 'kappa';
saveVarsTmp{1}(2, 1).Complexity = 'real';
saveVarsTmp{1}(2, 1).Dimensions = 1;
saveVarsTmp{1}(2, 1).DataType = 'single';
saveVarsTmp{1}(2, 1).Min = [];
saveVarsTmp{1}(2, 1).Max = [];
saveVarsTmp{1}(2, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(2, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(2, 1).DocUnits = '';
saveVarsTmp{1}(2, 1).Description = '';

saveVarsTmp{1}(3, 1) = Simulink.BusElement;
saveVarsTmp{1}(3, 1).Name = 'u';
saveVarsTmp{1}(3, 1).Complexity = 'real';
saveVarsTmp{1}(3, 1).Dimensions = 1;
saveVarsTmp{1}(3, 1).DataType = 'single';
saveVarsTmp{1}(3, 1).Min = [];
saveVarsTmp{1}(3, 1).Max = [];
saveVarsTmp{1}(3, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(3, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(3, 1).DocUnits = '';
saveVarsTmp{1}(3, 1).Description = '';

saveVarsTmp{1}(4, 1) = Simulink.BusElement;
saveVarsTmp{1}(4, 1).Name = 'du';
saveVarsTmp{1}(4, 1).Complexity = 'real';
saveVarsTmp{1}(4, 1).Dimensions = 1;
saveVarsTmp{1}(4, 1).DataType = 'single';
saveVarsTmp{1}(4, 1).Min = [];
saveVarsTmp{1}(4, 1).Max = [];
saveVarsTmp{1}(4, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(4, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(4, 1).DocUnits = '';
saveVarsTmp{1}(4, 1).Description = '';

saveVarsTmp{1}(5, 1) = Simulink.BusElement;
saveVarsTmp{1}(5, 1).Name = 'e';
saveVarsTmp{1}(5, 1).Complexity = 'real';
saveVarsTmp{1}(5, 1).Dimensions = 1;
saveVarsTmp{1}(5, 1).DataType = 'single';
saveVarsTmp{1}(5, 1).Min = [];
saveVarsTmp{1}(5, 1).Max = [];
saveVarsTmp{1}(5, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(5, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(5, 1).DocUnits = '';
saveVarsTmp{1}(5, 1).Description = '';

saveVarsTmp{1}(6, 1) = Simulink.BusElement;
saveVarsTmp{1}(6, 1).Name = 'a';
saveVarsTmp{1}(6, 1).Complexity = 'real';
saveVarsTmp{1}(6, 1).Dimensions = 1;
saveVarsTmp{1}(6, 1).DataType = 'single';
saveVarsTmp{1}(6, 1).Min = [];
saveVarsTmp{1}(6, 1).Max = [];
saveVarsTmp{1}(6, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(6, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(6, 1).DocUnits = '';
saveVarsTmp{1}(6, 1).Description = '';

saveVarsTmp{1}(7, 1) = Simulink.BusElement;
saveVarsTmp{1}(7, 1).Name = 'ud';
saveVarsTmp{1}(7, 1).Complexity = 'real';
saveVarsTmp{1}(7, 1).Dimensions = 1;
saveVarsTmp{1}(7, 1).DataType = 'single';
saveVarsTmp{1}(7, 1).Min = [];
saveVarsTmp{1}(7, 1).Max = [];
saveVarsTmp{1}(7, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(7, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(7, 1).DocUnits = '';
saveVarsTmp{1}(7, 1).Description = '';
BUS_TC_MF_CONTROL_INFO.Elements = saveVarsTmp{1};
clear saveVarsTmp;

%% Bus containing information about parameters of the traction controller
BUS_TC_MF_CONTROL_PARAMS = Simulink.Bus;
BUS_TC_MF_CONTROL_PARAMS.Description = '';
BUS_TC_MF_CONTROL_PARAMS.DataScope = 'Auto';
BUS_TC_MF_CONTROL_PARAMS.HeaderFile = '';
BUS_TC_MF_CONTROL_PARAMS.Alignment = -1;
BUS_TC_MF_CONTROL_PARAMS.PreserveElementDimensions = false;
saveVarsTmp{1} = Simulink.BusElement;
saveVarsTmp{1}.Name = 'Kp';
saveVarsTmp{1}.Complexity = 'real';
saveVarsTmp{1}.Dimensions = 1;
saveVarsTmp{1}.DataType = 'single';
saveVarsTmp{1}.Min = [];
saveVarsTmp{1}.Max = [];
saveVarsTmp{1}.DimensionsMode = 'Fixed';
saveVarsTmp{1}.SamplingMode = 'Sample based';
saveVarsTmp{1}.DocUnits = '';
saveVarsTmp{1}.Description = '';

saveVarsTmp{1}(2, 1) = Simulink.BusElement;
saveVarsTmp{1}(2, 1).Name = 'Td';
saveVarsTmp{1}(2, 1).Complexity = 'real';
saveVarsTmp{1}(2, 1).Dimensions = 1;
saveVarsTmp{1}(2, 1).DataType = 'single';
saveVarsTmp{1}(2, 1).Min = [];
saveVarsTmp{1}(2, 1).Max = [];
saveVarsTmp{1}(2, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(2, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(2, 1).DocUnits = '';
saveVarsTmp{1}(2, 1).Description = '';

saveVarsTmp{1}(3, 1) = Simulink.BusElement;
saveVarsTmp{1}(3, 1).Name = 'Ts';
saveVarsTmp{1}(3, 1).Complexity = 'real';
saveVarsTmp{1}(3, 1).Dimensions = 1;
saveVarsTmp{1}(3, 1).DataType = 'single';
saveVarsTmp{1}(3, 1).Min = [];
saveVarsTmp{1}(3, 1).Max = [];
saveVarsTmp{1}(3, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(3, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(3, 1).DocUnits = '';
saveVarsTmp{1}(3, 1).Description = '';

saveVarsTmp{1}(4, 1) = Simulink.BusElement;
saveVarsTmp{1}(4, 1).Name = 'alpha';
saveVarsTmp{1}(4, 1).Complexity = 'real';
saveVarsTmp{1}(4, 1).Dimensions = 1;
saveVarsTmp{1}(4, 1).DataType = 'single';
saveVarsTmp{1}(4, 1).Min = [];
saveVarsTmp{1}(4, 1).Max = [];
saveVarsTmp{1}(4, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(4, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(4, 1).DocUnits = '';
saveVarsTmp{1}(4, 1).Description = '';

saveVarsTmp{1}(5, 1) = Simulink.BusElement;
saveVarsTmp{1}(5, 1).Name = 'N';
saveVarsTmp{1}(5, 1).Complexity = 'real';
saveVarsTmp{1}(5, 1).Dimensions = 1;
saveVarsTmp{1}(5, 1).DataType = 'int8';
saveVarsTmp{1}(5, 1).Min = [];
saveVarsTmp{1}(5, 1).Max = [];
saveVarsTmp{1}(5, 1).DimensionsMode = 'Fixed';
saveVarsTmp{1}(5, 1).SamplingMode = 'Sample based';
saveVarsTmp{1}(5, 1).DocUnits = '';
saveVarsTmp{1}(5, 1).Description = '';
BUS_TC_MF_CONTROL_PARAMS.Elements = saveVarsTmp{1};
clear saveVarsTmp;

