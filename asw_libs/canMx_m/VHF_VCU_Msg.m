function msg = VHF_VCU_Msg(msgname,type)
  if(255==type)
  msg = struct;
  msg.num=13;
  msg.list= cell(1, msg.num);
  msg.list{1}='VCUCommands';
  msg.list{2}='BMS_CellVoltage1to8';
  msg.list{3}='BMS_CellVoltage9to16';
  msg.list{4}='BMS_OperationStatus';
  msg.list{5}='BMS_StateOfStatus';
  msg.list{6}='Motor1_RUN_STATUS';
  msg.list{7}='Motor1_ELEC_STATUS';
  msg.list{8}='Motor2_RUN_STATUS';
  msg.list{9}='Motor2_ELEC_STATUS';
  msg.list{10}='CCU_Status_VCU';
  msg.list{11}='CCU_InductorStatus';
  msg.list{12}='SCG_Status_VCU';
  msg.list{13}='SCG_ICE_Status';
  else 
  msg = struct;
  switch msgname 
%%
%Network Node:VCU
%Message Name:VCUCommands
%Message Number:1
case 'VCUCommands'
    ECOCAN.VCUCommands = struct;
    ECOCAN.VCUCommands.name = 'VCUCommands';
    ECOCAN.VCUCommands.description = 'VCUCommands';
    ECOCAN.VCUCommands.protocol  = 'ECOCAN';
    ECOCAN.VCUCommands.id = hex2dec('10');
    ECOCAN.VCUCommands.idext = 'STANDARD';
    ECOCAN.VCUCommands.payload_size =8;
    ECOCAN.VCUCommands.interval =20;

    ECOCAN.VCUCommands.fields{1}.name = 'ThrottleTarget';
    ECOCAN.VCUCommands.fields{1}.units = '%';
    ECOCAN.VCUCommands.fields{1}.start_bit = 0;
    ECOCAN.VCUCommands.fields{1}.bit_length = 8;
    ECOCAN.VCUCommands.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCUCommands.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.VCUCommands.fields{1}.scale = 0.5;
    ECOCAN.VCUCommands.fields{1}.offset = 0;
    ECOCAN.VCUCommands.fields{1}.multiplex_type = 'Standard';
    ECOCAN.VCUCommands.fields{1}.multiplex_value = 0;

    ECOCAN.VCUCommands.fields{2}.name = 'LinkVoltageTarget';
    ECOCAN.VCUCommands.fields{2}.units = 'V';
    ECOCAN.VCUCommands.fields{2}.start_bit = 8;
    ECOCAN.VCUCommands.fields{2}.bit_length = 8;
    ECOCAN.VCUCommands.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCUCommands.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.VCUCommands.fields{2}.scale = 0.2;
    ECOCAN.VCUCommands.fields{2}.offset = 70;
    ECOCAN.VCUCommands.fields{2}.multiplex_type = 'Standard';
    ECOCAN.VCUCommands.fields{2}.multiplex_value = 0;

    ECOCAN.VCUCommands.fields{3}.name = 'SpeedICE';
    ECOCAN.VCUCommands.fields{3}.units = 'rpm';
    ECOCAN.VCUCommands.fields{3}.start_bit = 16;
    ECOCAN.VCUCommands.fields{3}.bit_length = 16;
    ECOCAN.VCUCommands.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.VCUCommands.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.VCUCommands.fields{3}.scale = 1;
    ECOCAN.VCUCommands.fields{3}.offset = 0;
    ECOCAN.VCUCommands.fields{3}.multiplex_type = 'Standard';
    ECOCAN.VCUCommands.fields{3}.multiplex_value = 0;


%%
%Network Node:BMS
%Message Name:BMS_CellVoltage1to8
%Message Number:2
case 'BMS_CellVoltage1to8'
    ECOCAN.BMS_CellVoltage1to8 = struct;
    ECOCAN.BMS_CellVoltage1to8.name = 'BMS_CellVoltage1to8';
    ECOCAN.BMS_CellVoltage1to8.description = 'BMS_CellVoltage1to8';
    ECOCAN.BMS_CellVoltage1to8.protocol  = 'ECOCAN';
    ECOCAN.BMS_CellVoltage1to8.id = hex2dec('325');
    ECOCAN.BMS_CellVoltage1to8.idext = 'STANDARD';
    ECOCAN.BMS_CellVoltage1to8.payload_size =8;
    ECOCAN.BMS_CellVoltage1to8.interval =-1;

    ECOCAN.BMS_CellVoltage1to8.fields{1}.name = 'CellVoltage1';
    ECOCAN.BMS_CellVoltage1to8.fields{1}.units = '';
    ECOCAN.BMS_CellVoltage1to8.fields{1}.start_bit = 0;
    ECOCAN.BMS_CellVoltage1to8.fields{1}.bit_length = 8;
    ECOCAN.BMS_CellVoltage1to8.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage1to8.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage1to8.fields{1}.scale = 0.02;
    ECOCAN.BMS_CellVoltage1to8.fields{1}.offset = 0;
    ECOCAN.BMS_CellVoltage1to8.fields{1}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage1to8.fields{1}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage1to8.fields{2}.name = 'CellVoltage2';
    ECOCAN.BMS_CellVoltage1to8.fields{2}.units = '';
    ECOCAN.BMS_CellVoltage1to8.fields{2}.start_bit = 8;
    ECOCAN.BMS_CellVoltage1to8.fields{2}.bit_length = 8;
    ECOCAN.BMS_CellVoltage1to8.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage1to8.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage1to8.fields{2}.scale = 0.02;
    ECOCAN.BMS_CellVoltage1to8.fields{2}.offset = 0;
    ECOCAN.BMS_CellVoltage1to8.fields{2}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage1to8.fields{2}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage1to8.fields{3}.name = 'CellVoltage3';
    ECOCAN.BMS_CellVoltage1to8.fields{3}.units = '';
    ECOCAN.BMS_CellVoltage1to8.fields{3}.start_bit = 16;
    ECOCAN.BMS_CellVoltage1to8.fields{3}.bit_length = 8;
    ECOCAN.BMS_CellVoltage1to8.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage1to8.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage1to8.fields{3}.scale = 0.02;
    ECOCAN.BMS_CellVoltage1to8.fields{3}.offset = 0;
    ECOCAN.BMS_CellVoltage1to8.fields{3}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage1to8.fields{3}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage1to8.fields{4}.name = 'CellVoltage4';
    ECOCAN.BMS_CellVoltage1to8.fields{4}.units = '';
    ECOCAN.BMS_CellVoltage1to8.fields{4}.start_bit = 24;
    ECOCAN.BMS_CellVoltage1to8.fields{4}.bit_length = 8;
    ECOCAN.BMS_CellVoltage1to8.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage1to8.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage1to8.fields{4}.scale = 0.02;
    ECOCAN.BMS_CellVoltage1to8.fields{4}.offset = 0;
    ECOCAN.BMS_CellVoltage1to8.fields{4}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage1to8.fields{4}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage1to8.fields{5}.name = 'CellVoltage5';
    ECOCAN.BMS_CellVoltage1to8.fields{5}.units = '';
    ECOCAN.BMS_CellVoltage1to8.fields{5}.start_bit = 32;
    ECOCAN.BMS_CellVoltage1to8.fields{5}.bit_length = 8;
    ECOCAN.BMS_CellVoltage1to8.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage1to8.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage1to8.fields{5}.scale = 0.02;
    ECOCAN.BMS_CellVoltage1to8.fields{5}.offset = 0;
    ECOCAN.BMS_CellVoltage1to8.fields{5}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage1to8.fields{5}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage1to8.fields{6}.name = 'CellVoltage6';
    ECOCAN.BMS_CellVoltage1to8.fields{6}.units = '';
    ECOCAN.BMS_CellVoltage1to8.fields{6}.start_bit = 40;
    ECOCAN.BMS_CellVoltage1to8.fields{6}.bit_length = 8;
    ECOCAN.BMS_CellVoltage1to8.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage1to8.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage1to8.fields{6}.scale = 0.02;
    ECOCAN.BMS_CellVoltage1to8.fields{6}.offset = 0;
    ECOCAN.BMS_CellVoltage1to8.fields{6}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage1to8.fields{6}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage1to8.fields{7}.name = 'CellVoltage7';
    ECOCAN.BMS_CellVoltage1to8.fields{7}.units = '';
    ECOCAN.BMS_CellVoltage1to8.fields{7}.start_bit = 48;
    ECOCAN.BMS_CellVoltage1to8.fields{7}.bit_length = 8;
    ECOCAN.BMS_CellVoltage1to8.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage1to8.fields{7}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage1to8.fields{7}.scale = 0.02;
    ECOCAN.BMS_CellVoltage1to8.fields{7}.offset = 0;
    ECOCAN.BMS_CellVoltage1to8.fields{7}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage1to8.fields{7}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage1to8.fields{8}.name = 'CellVoltage8';
    ECOCAN.BMS_CellVoltage1to8.fields{8}.units = '';
    ECOCAN.BMS_CellVoltage1to8.fields{8}.start_bit = 56;
    ECOCAN.BMS_CellVoltage1to8.fields{8}.bit_length = 8;
    ECOCAN.BMS_CellVoltage1to8.fields{8}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage1to8.fields{8}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage1to8.fields{8}.scale = 0.02;
    ECOCAN.BMS_CellVoltage1to8.fields{8}.offset = 0;
    ECOCAN.BMS_CellVoltage1to8.fields{8}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage1to8.fields{8}.multiplex_value = 0;


%%
%Network Node:BMS
%Message Name:BMS_CellVoltage9to16
%Message Number:3
case 'BMS_CellVoltage9to16'
    ECOCAN.BMS_CellVoltage9to16 = struct;
    ECOCAN.BMS_CellVoltage9to16.name = 'BMS_CellVoltage9to16';
    ECOCAN.BMS_CellVoltage9to16.description = 'BMS_CellVoltage9to16';
    ECOCAN.BMS_CellVoltage9to16.protocol  = 'ECOCAN';
    ECOCAN.BMS_CellVoltage9to16.id = hex2dec('326');
    ECOCAN.BMS_CellVoltage9to16.idext = 'STANDARD';
    ECOCAN.BMS_CellVoltage9to16.payload_size =8;
    ECOCAN.BMS_CellVoltage9to16.interval =-1;

    ECOCAN.BMS_CellVoltage9to16.fields{1}.name = 'CellVoltage9';
    ECOCAN.BMS_CellVoltage9to16.fields{1}.units = '';
    ECOCAN.BMS_CellVoltage9to16.fields{1}.start_bit = 0;
    ECOCAN.BMS_CellVoltage9to16.fields{1}.bit_length = 8;
    ECOCAN.BMS_CellVoltage9to16.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage9to16.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage9to16.fields{1}.scale = 0.02;
    ECOCAN.BMS_CellVoltage9to16.fields{1}.offset = 0;
    ECOCAN.BMS_CellVoltage9to16.fields{1}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage9to16.fields{1}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage9to16.fields{2}.name = 'CellVoltage10';
    ECOCAN.BMS_CellVoltage9to16.fields{2}.units = '';
    ECOCAN.BMS_CellVoltage9to16.fields{2}.start_bit = 8;
    ECOCAN.BMS_CellVoltage9to16.fields{2}.bit_length = 8;
    ECOCAN.BMS_CellVoltage9to16.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage9to16.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage9to16.fields{2}.scale = 0.02;
    ECOCAN.BMS_CellVoltage9to16.fields{2}.offset = 0;
    ECOCAN.BMS_CellVoltage9to16.fields{2}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage9to16.fields{2}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage9to16.fields{3}.name = 'CellVoltage11';
    ECOCAN.BMS_CellVoltage9to16.fields{3}.units = '';
    ECOCAN.BMS_CellVoltage9to16.fields{3}.start_bit = 16;
    ECOCAN.BMS_CellVoltage9to16.fields{3}.bit_length = 8;
    ECOCAN.BMS_CellVoltage9to16.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage9to16.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage9to16.fields{3}.scale = 0.02;
    ECOCAN.BMS_CellVoltage9to16.fields{3}.offset = 0;
    ECOCAN.BMS_CellVoltage9to16.fields{3}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage9to16.fields{3}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage9to16.fields{4}.name = 'CellVoltage12';
    ECOCAN.BMS_CellVoltage9to16.fields{4}.units = '';
    ECOCAN.BMS_CellVoltage9to16.fields{4}.start_bit = 24;
    ECOCAN.BMS_CellVoltage9to16.fields{4}.bit_length = 8;
    ECOCAN.BMS_CellVoltage9to16.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage9to16.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage9to16.fields{4}.scale = 0.02;
    ECOCAN.BMS_CellVoltage9to16.fields{4}.offset = 0;
    ECOCAN.BMS_CellVoltage9to16.fields{4}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage9to16.fields{4}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage9to16.fields{5}.name = 'CellVoltage13';
    ECOCAN.BMS_CellVoltage9to16.fields{5}.units = '';
    ECOCAN.BMS_CellVoltage9to16.fields{5}.start_bit = 32;
    ECOCAN.BMS_CellVoltage9to16.fields{5}.bit_length = 8;
    ECOCAN.BMS_CellVoltage9to16.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage9to16.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage9to16.fields{5}.scale = 0.02;
    ECOCAN.BMS_CellVoltage9to16.fields{5}.offset = 0;
    ECOCAN.BMS_CellVoltage9to16.fields{5}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage9to16.fields{5}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage9to16.fields{6}.name = 'CellVoltage14';
    ECOCAN.BMS_CellVoltage9to16.fields{6}.units = '';
    ECOCAN.BMS_CellVoltage9to16.fields{6}.start_bit = 40;
    ECOCAN.BMS_CellVoltage9to16.fields{6}.bit_length = 8;
    ECOCAN.BMS_CellVoltage9to16.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage9to16.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage9to16.fields{6}.scale = 0.02;
    ECOCAN.BMS_CellVoltage9to16.fields{6}.offset = 0;
    ECOCAN.BMS_CellVoltage9to16.fields{6}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage9to16.fields{6}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage9to16.fields{7}.name = 'CellVoltage15';
    ECOCAN.BMS_CellVoltage9to16.fields{7}.units = '';
    ECOCAN.BMS_CellVoltage9to16.fields{7}.start_bit = 48;
    ECOCAN.BMS_CellVoltage9to16.fields{7}.bit_length = 8;
    ECOCAN.BMS_CellVoltage9to16.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage9to16.fields{7}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage9to16.fields{7}.scale = 0.02;
    ECOCAN.BMS_CellVoltage9to16.fields{7}.offset = 0;
    ECOCAN.BMS_CellVoltage9to16.fields{7}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage9to16.fields{7}.multiplex_value = 0;

    ECOCAN.BMS_CellVoltage9to16.fields{8}.name = 'CellVoltage16';
    ECOCAN.BMS_CellVoltage9to16.fields{8}.units = '';
    ECOCAN.BMS_CellVoltage9to16.fields{8}.start_bit = 56;
    ECOCAN.BMS_CellVoltage9to16.fields{8}.bit_length = 8;
    ECOCAN.BMS_CellVoltage9to16.fields{8}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_CellVoltage9to16.fields{8}.data_type = 'UNSIGNED';
    ECOCAN.BMS_CellVoltage9to16.fields{8}.scale = 0.02;
    ECOCAN.BMS_CellVoltage9to16.fields{8}.offset = 0;
    ECOCAN.BMS_CellVoltage9to16.fields{8}.multiplex_type = 'Standard';
    ECOCAN.BMS_CellVoltage9to16.fields{8}.multiplex_value = 0;


%%
%Network Node:BMS
%Message Name:BMS_OperationStatus
%Message Number:4
case 'BMS_OperationStatus'
    ECOCAN.BMS_OperationStatus = struct;
    ECOCAN.BMS_OperationStatus.name = 'BMS_OperationStatus';
    ECOCAN.BMS_OperationStatus.description = 'BMS_OperationStatus';
    ECOCAN.BMS_OperationStatus.protocol  = 'ECOCAN';
    ECOCAN.BMS_OperationStatus.id = hex2dec('7B');
    ECOCAN.BMS_OperationStatus.idext = 'STANDARD';
    ECOCAN.BMS_OperationStatus.payload_size =7;
    ECOCAN.BMS_OperationStatus.interval =-1;

    ECOCAN.BMS_OperationStatus.fields{1}.name = 'BattPackVoltage';
    ECOCAN.BMS_OperationStatus.fields{1}.units = 'V';
    ECOCAN.BMS_OperationStatus.fields{1}.start_bit = 0;
    ECOCAN.BMS_OperationStatus.fields{1}.bit_length = 12;
    ECOCAN.BMS_OperationStatus.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_OperationStatus.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.BMS_OperationStatus.fields{1}.scale = 0.02;
    ECOCAN.BMS_OperationStatus.fields{1}.offset = 0;
    ECOCAN.BMS_OperationStatus.fields{1}.multiplex_type = 'Standard';
    ECOCAN.BMS_OperationStatus.fields{1}.multiplex_value = 0;

    ECOCAN.BMS_OperationStatus.fields{2}.name = 'BattOCV';
    ECOCAN.BMS_OperationStatus.fields{2}.units = 'V';
    ECOCAN.BMS_OperationStatus.fields{2}.start_bit = 12;
    ECOCAN.BMS_OperationStatus.fields{2}.bit_length = 12;
    ECOCAN.BMS_OperationStatus.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_OperationStatus.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.BMS_OperationStatus.fields{2}.scale = 0.02;
    ECOCAN.BMS_OperationStatus.fields{2}.offset = 0;
    ECOCAN.BMS_OperationStatus.fields{2}.multiplex_type = 'Standard';
    ECOCAN.BMS_OperationStatus.fields{2}.multiplex_value = 0;

    ECOCAN.BMS_OperationStatus.fields{3}.name = 'BattPackCurrent';
    ECOCAN.BMS_OperationStatus.fields{3}.units = 'A';
    ECOCAN.BMS_OperationStatus.fields{3}.start_bit = 24;
    ECOCAN.BMS_OperationStatus.fields{3}.bit_length = 13;
    ECOCAN.BMS_OperationStatus.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_OperationStatus.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.BMS_OperationStatus.fields{3}.scale = 0.1;
    ECOCAN.BMS_OperationStatus.fields{3}.offset = -409.6;
    ECOCAN.BMS_OperationStatus.fields{3}.multiplex_type = 'Standard';
    ECOCAN.BMS_OperationStatus.fields{3}.multiplex_value = 0;

    ECOCAN.BMS_OperationStatus.fields{4}.name = 'PackMaxDischargeCurrent';
    ECOCAN.BMS_OperationStatus.fields{4}.units = 'A';
    ECOCAN.BMS_OperationStatus.fields{4}.start_bit = 40;
    ECOCAN.BMS_OperationStatus.fields{4}.bit_length = 8;
    ECOCAN.BMS_OperationStatus.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_OperationStatus.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.BMS_OperationStatus.fields{4}.scale = 1;
    ECOCAN.BMS_OperationStatus.fields{4}.offset = 0;
    ECOCAN.BMS_OperationStatus.fields{4}.multiplex_type = 'Standard';
    ECOCAN.BMS_OperationStatus.fields{4}.multiplex_value = 0;

    ECOCAN.BMS_OperationStatus.fields{5}.name = 'PackMaxChargeCurrent';
    ECOCAN.BMS_OperationStatus.fields{5}.units = 'A';
    ECOCAN.BMS_OperationStatus.fields{5}.start_bit = 48;
    ECOCAN.BMS_OperationStatus.fields{5}.bit_length = 8;
    ECOCAN.BMS_OperationStatus.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_OperationStatus.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.BMS_OperationStatus.fields{5}.scale = 1;
    ECOCAN.BMS_OperationStatus.fields{5}.offset = 0;
    ECOCAN.BMS_OperationStatus.fields{5}.multiplex_type = 'Standard';
    ECOCAN.BMS_OperationStatus.fields{5}.multiplex_value = 0;


%%
%Network Node:BMS
%Message Name:BMS_StateOfStatus
%Message Number:5
case 'BMS_StateOfStatus'
    ECOCAN.BMS_StateOfStatus = struct;
    ECOCAN.BMS_StateOfStatus.name = 'BMS_StateOfStatus';
    ECOCAN.BMS_StateOfStatus.description = 'BMS_StateOfStatus';
    ECOCAN.BMS_StateOfStatus.protocol  = 'ECOCAN';
    ECOCAN.BMS_StateOfStatus.id = hex2dec('7C');
    ECOCAN.BMS_StateOfStatus.idext = 'STANDARD';
    ECOCAN.BMS_StateOfStatus.payload_size =6;
    ECOCAN.BMS_StateOfStatus.interval =-1;

    ECOCAN.BMS_StateOfStatus.fields{1}.name = 'StateOfCharge';
    ECOCAN.BMS_StateOfStatus.fields{1}.units = '%';
    ECOCAN.BMS_StateOfStatus.fields{1}.start_bit = 0;
    ECOCAN.BMS_StateOfStatus.fields{1}.bit_length = 8;
    ECOCAN.BMS_StateOfStatus.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_StateOfStatus.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.BMS_StateOfStatus.fields{1}.scale = 0.5;
    ECOCAN.BMS_StateOfStatus.fields{1}.offset = 0;
    ECOCAN.BMS_StateOfStatus.fields{1}.multiplex_type = 'Standard';
    ECOCAN.BMS_StateOfStatus.fields{1}.multiplex_value = 0;

    ECOCAN.BMS_StateOfStatus.fields{2}.name = 'StateOfHealth';
    ECOCAN.BMS_StateOfStatus.fields{2}.units = '%';
    ECOCAN.BMS_StateOfStatus.fields{2}.start_bit = 8;
    ECOCAN.BMS_StateOfStatus.fields{2}.bit_length = 8;
    ECOCAN.BMS_StateOfStatus.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_StateOfStatus.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.BMS_StateOfStatus.fields{2}.scale = 0.5;
    ECOCAN.BMS_StateOfStatus.fields{2}.offset = 0;
    ECOCAN.BMS_StateOfStatus.fields{2}.multiplex_type = 'Standard';
    ECOCAN.BMS_StateOfStatus.fields{2}.multiplex_value = 0;

    ECOCAN.BMS_StateOfStatus.fields{3}.name = 'StateOfEnergy';
    ECOCAN.BMS_StateOfStatus.fields{3}.units = '%';
    ECOCAN.BMS_StateOfStatus.fields{3}.start_bit = 16;
    ECOCAN.BMS_StateOfStatus.fields{3}.bit_length = 8;
    ECOCAN.BMS_StateOfStatus.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_StateOfStatus.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.BMS_StateOfStatus.fields{3}.scale = 0.5;
    ECOCAN.BMS_StateOfStatus.fields{3}.offset = 0;
    ECOCAN.BMS_StateOfStatus.fields{3}.multiplex_type = 'Standard';
    ECOCAN.BMS_StateOfStatus.fields{3}.multiplex_value = 0;

    ECOCAN.BMS_StateOfStatus.fields{4}.name = 'BattStoragedEnergy';
    ECOCAN.BMS_StateOfStatus.fields{4}.units = 'kWh';
    ECOCAN.BMS_StateOfStatus.fields{4}.start_bit = 24;
    ECOCAN.BMS_StateOfStatus.fields{4}.bit_length = 13;
    ECOCAN.BMS_StateOfStatus.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_StateOfStatus.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.BMS_StateOfStatus.fields{4}.scale = 1;
    ECOCAN.BMS_StateOfStatus.fields{4}.offset = 0;
    ECOCAN.BMS_StateOfStatus.fields{4}.multiplex_type = 'Standard';
    ECOCAN.BMS_StateOfStatus.fields{4}.multiplex_value = 0;

    ECOCAN.BMS_StateOfStatus.fields{5}.name = 'BattTemperature';
    ECOCAN.BMS_StateOfStatus.fields{5}.units = '%';
    ECOCAN.BMS_StateOfStatus.fields{5}.start_bit = 40;
    ECOCAN.BMS_StateOfStatus.fields{5}.bit_length = 8;
    ECOCAN.BMS_StateOfStatus.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.BMS_StateOfStatus.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.BMS_StateOfStatus.fields{5}.scale = 0.5;
    ECOCAN.BMS_StateOfStatus.fields{5}.offset = -10;
    ECOCAN.BMS_StateOfStatus.fields{5}.multiplex_type = 'Standard';
    ECOCAN.BMS_StateOfStatus.fields{5}.multiplex_value = 0;


%%
%Network Node:Motor1
%Message Name:Motor1_RUN_STATUS
%Message Number:6
case 'Motor1_RUN_STATUS'
    ECOCAN.Motor1_RUN_STATUS = struct;
    ECOCAN.Motor1_RUN_STATUS.name = 'Motor1_RUN_STATUS';
    ECOCAN.Motor1_RUN_STATUS.description = 'Motor1_RUN_STATUS';
    ECOCAN.Motor1_RUN_STATUS.protocol  = 'ECOCAN';
    ECOCAN.Motor1_RUN_STATUS.id = hex2dec('F3');
    ECOCAN.Motor1_RUN_STATUS.idext = 'STANDARD';
    ECOCAN.Motor1_RUN_STATUS.payload_size =8;
    ECOCAN.Motor1_RUN_STATUS.interval =50;

    ECOCAN.Motor1_RUN_STATUS.fields{1}.name = 'Run_direction';
    ECOCAN.Motor1_RUN_STATUS.fields{1}.units = '';
    ECOCAN.Motor1_RUN_STATUS.fields{1}.start_bit = 0;
    ECOCAN.Motor1_RUN_STATUS.fields{1}.bit_length = 2;
    ECOCAN.Motor1_RUN_STATUS.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor1_RUN_STATUS.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.Motor1_RUN_STATUS.fields{1}.scale = 1;
    ECOCAN.Motor1_RUN_STATUS.fields{1}.offset = 0;
    ECOCAN.Motor1_RUN_STATUS.fields{1}.multiplex_type = 'Standard';
    ECOCAN.Motor1_RUN_STATUS.fields{1}.multiplex_value = 0;

    ECOCAN.Motor1_RUN_STATUS.fields{2}.name = 'Running_mode';
    ECOCAN.Motor1_RUN_STATUS.fields{2}.units = '';
    ECOCAN.Motor1_RUN_STATUS.fields{2}.start_bit = 3;
    ECOCAN.Motor1_RUN_STATUS.fields{2}.bit_length = 1;
    ECOCAN.Motor1_RUN_STATUS.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor1_RUN_STATUS.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.Motor1_RUN_STATUS.fields{2}.scale = 1;
    ECOCAN.Motor1_RUN_STATUS.fields{2}.offset = 0;
    ECOCAN.Motor1_RUN_STATUS.fields{2}.multiplex_type = 'Standard';
    ECOCAN.Motor1_RUN_STATUS.fields{2}.multiplex_value = 0;

    ECOCAN.Motor1_RUN_STATUS.fields{3}.name = 'Motor_Speed';
    ECOCAN.Motor1_RUN_STATUS.fields{3}.units = 'rpm';
    ECOCAN.Motor1_RUN_STATUS.fields{3}.start_bit = 8;
    ECOCAN.Motor1_RUN_STATUS.fields{3}.bit_length = 16;
    ECOCAN.Motor1_RUN_STATUS.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor1_RUN_STATUS.fields{3}.data_type = 'SIGNED';
    ECOCAN.Motor1_RUN_STATUS.fields{3}.scale = 1;
    ECOCAN.Motor1_RUN_STATUS.fields{3}.offset = 0;
    ECOCAN.Motor1_RUN_STATUS.fields{3}.multiplex_type = 'Standard';
    ECOCAN.Motor1_RUN_STATUS.fields{3}.multiplex_value = 0;

    ECOCAN.Motor1_RUN_STATUS.fields{4}.name = 'Fault_Code';
    ECOCAN.Motor1_RUN_STATUS.fields{4}.units = '';
    ECOCAN.Motor1_RUN_STATUS.fields{4}.start_bit = 24;
    ECOCAN.Motor1_RUN_STATUS.fields{4}.bit_length = 8;
    ECOCAN.Motor1_RUN_STATUS.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor1_RUN_STATUS.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.Motor1_RUN_STATUS.fields{4}.scale = 1;
    ECOCAN.Motor1_RUN_STATUS.fields{4}.offset = 0;
    ECOCAN.Motor1_RUN_STATUS.fields{4}.multiplex_type = 'Standard';
    ECOCAN.Motor1_RUN_STATUS.fields{4}.multiplex_value = 0;

    ECOCAN.Motor1_RUN_STATUS.fields{5}.name = 'ConsumptionMode';
    ECOCAN.Motor1_RUN_STATUS.fields{5}.units = '';
    ECOCAN.Motor1_RUN_STATUS.fields{5}.start_bit = 32;
    ECOCAN.Motor1_RUN_STATUS.fields{5}.bit_length = 8;
    ECOCAN.Motor1_RUN_STATUS.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor1_RUN_STATUS.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.Motor1_RUN_STATUS.fields{5}.scale = 1;
    ECOCAN.Motor1_RUN_STATUS.fields{5}.offset = 0;
    ECOCAN.Motor1_RUN_STATUS.fields{5}.multiplex_type = 'Standard';
    ECOCAN.Motor1_RUN_STATUS.fields{5}.multiplex_value = 0;

    ECOCAN.Motor1_RUN_STATUS.fields{6}.name = 'SubtotalMileage';
    ECOCAN.Motor1_RUN_STATUS.fields{6}.units = 'km';
    ECOCAN.Motor1_RUN_STATUS.fields{6}.start_bit = 40;
    ECOCAN.Motor1_RUN_STATUS.fields{6}.bit_length = 16;
    ECOCAN.Motor1_RUN_STATUS.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor1_RUN_STATUS.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.Motor1_RUN_STATUS.fields{6}.scale = 0.1;
    ECOCAN.Motor1_RUN_STATUS.fields{6}.offset = 0;
    ECOCAN.Motor1_RUN_STATUS.fields{6}.multiplex_type = 'Standard';
    ECOCAN.Motor1_RUN_STATUS.fields{6}.multiplex_value = 0;


%%
%Network Node:Motor1
%Message Name:Motor1_ELEC_STATUS
%Message Number:7
case 'Motor1_ELEC_STATUS'
    ECOCAN.Motor1_ELEC_STATUS = struct;
    ECOCAN.Motor1_ELEC_STATUS.name = 'Motor1_ELEC_STATUS';
    ECOCAN.Motor1_ELEC_STATUS.description = 'Motor1_ELEC_STATUS';
    ECOCAN.Motor1_ELEC_STATUS.protocol  = 'ECOCAN';
    ECOCAN.Motor1_ELEC_STATUS.id = hex2dec('F4');
    ECOCAN.Motor1_ELEC_STATUS.idext = 'STANDARD';
    ECOCAN.Motor1_ELEC_STATUS.payload_size =8;
    ECOCAN.Motor1_ELEC_STATUS.interval =50;

    ECOCAN.Motor1_ELEC_STATUS.fields{1}.name = 'DC_LinkVoltage';
    ECOCAN.Motor1_ELEC_STATUS.fields{1}.units = 'V';
    ECOCAN.Motor1_ELEC_STATUS.fields{1}.start_bit = 0;
    ECOCAN.Motor1_ELEC_STATUS.fields{1}.bit_length = 16;
    ECOCAN.Motor1_ELEC_STATUS.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor1_ELEC_STATUS.fields{1}.data_type = 'SIGNED';
    ECOCAN.Motor1_ELEC_STATUS.fields{1}.scale = 0.1;
    ECOCAN.Motor1_ELEC_STATUS.fields{1}.offset = 0;
    ECOCAN.Motor1_ELEC_STATUS.fields{1}.multiplex_type = 'Standard';
    ECOCAN.Motor1_ELEC_STATUS.fields{1}.multiplex_value = 0;

    ECOCAN.Motor1_ELEC_STATUS.fields{2}.name = 'DC_LinkCurrent';
    ECOCAN.Motor1_ELEC_STATUS.fields{2}.units = 'A';
    ECOCAN.Motor1_ELEC_STATUS.fields{2}.start_bit = 16;
    ECOCAN.Motor1_ELEC_STATUS.fields{2}.bit_length = 16;
    ECOCAN.Motor1_ELEC_STATUS.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor1_ELEC_STATUS.fields{2}.data_type = 'SIGNED';
    ECOCAN.Motor1_ELEC_STATUS.fields{2}.scale = 0.1;
    ECOCAN.Motor1_ELEC_STATUS.fields{2}.offset = 0;
    ECOCAN.Motor1_ELEC_STATUS.fields{2}.multiplex_type = 'Standard';
    ECOCAN.Motor1_ELEC_STATUS.fields{2}.multiplex_value = 0;


%%
%Network Node:Motor2
%Message Name:Motor2_RUN_STATUS
%Message Number:8
case 'Motor2_RUN_STATUS'
    ECOCAN.Motor2_RUN_STATUS = struct;
    ECOCAN.Motor2_RUN_STATUS.name = 'Motor2_RUN_STATUS';
    ECOCAN.Motor2_RUN_STATUS.description = 'Motor2_RUN_STATUS';
    ECOCAN.Motor2_RUN_STATUS.protocol  = 'ECOCAN';
    ECOCAN.Motor2_RUN_STATUS.id = hex2dec('F5');
    ECOCAN.Motor2_RUN_STATUS.idext = 'STANDARD';
    ECOCAN.Motor2_RUN_STATUS.payload_size =8;
    ECOCAN.Motor2_RUN_STATUS.interval =50;

    ECOCAN.Motor2_RUN_STATUS.fields{1}.name = 'Run_direction';
    ECOCAN.Motor2_RUN_STATUS.fields{1}.units = '';
    ECOCAN.Motor2_RUN_STATUS.fields{1}.start_bit = 0;
    ECOCAN.Motor2_RUN_STATUS.fields{1}.bit_length = 2;
    ECOCAN.Motor2_RUN_STATUS.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor2_RUN_STATUS.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.Motor2_RUN_STATUS.fields{1}.scale = 1;
    ECOCAN.Motor2_RUN_STATUS.fields{1}.offset = 0;
    ECOCAN.Motor2_RUN_STATUS.fields{1}.multiplex_type = 'Standard';
    ECOCAN.Motor2_RUN_STATUS.fields{1}.multiplex_value = 0;

    ECOCAN.Motor2_RUN_STATUS.fields{2}.name = 'Running_mode';
    ECOCAN.Motor2_RUN_STATUS.fields{2}.units = '';
    ECOCAN.Motor2_RUN_STATUS.fields{2}.start_bit = 3;
    ECOCAN.Motor2_RUN_STATUS.fields{2}.bit_length = 1;
    ECOCAN.Motor2_RUN_STATUS.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor2_RUN_STATUS.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.Motor2_RUN_STATUS.fields{2}.scale = 1;
    ECOCAN.Motor2_RUN_STATUS.fields{2}.offset = 0;
    ECOCAN.Motor2_RUN_STATUS.fields{2}.multiplex_type = 'Standard';
    ECOCAN.Motor2_RUN_STATUS.fields{2}.multiplex_value = 0;

    ECOCAN.Motor2_RUN_STATUS.fields{3}.name = 'Motor_Speed';
    ECOCAN.Motor2_RUN_STATUS.fields{3}.units = 'rpm';
    ECOCAN.Motor2_RUN_STATUS.fields{3}.start_bit = 8;
    ECOCAN.Motor2_RUN_STATUS.fields{3}.bit_length = 16;
    ECOCAN.Motor2_RUN_STATUS.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor2_RUN_STATUS.fields{3}.data_type = 'SIGNED';
    ECOCAN.Motor2_RUN_STATUS.fields{3}.scale = 1;
    ECOCAN.Motor2_RUN_STATUS.fields{3}.offset = 0;
    ECOCAN.Motor2_RUN_STATUS.fields{3}.multiplex_type = 'Standard';
    ECOCAN.Motor2_RUN_STATUS.fields{3}.multiplex_value = 0;

    ECOCAN.Motor2_RUN_STATUS.fields{4}.name = 'Fault_Code';
    ECOCAN.Motor2_RUN_STATUS.fields{4}.units = '';
    ECOCAN.Motor2_RUN_STATUS.fields{4}.start_bit = 24;
    ECOCAN.Motor2_RUN_STATUS.fields{4}.bit_length = 8;
    ECOCAN.Motor2_RUN_STATUS.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor2_RUN_STATUS.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.Motor2_RUN_STATUS.fields{4}.scale = 1;
    ECOCAN.Motor2_RUN_STATUS.fields{4}.offset = 0;
    ECOCAN.Motor2_RUN_STATUS.fields{4}.multiplex_type = 'Standard';
    ECOCAN.Motor2_RUN_STATUS.fields{4}.multiplex_value = 0;

    ECOCAN.Motor2_RUN_STATUS.fields{5}.name = 'ConsumptionMode';
    ECOCAN.Motor2_RUN_STATUS.fields{5}.units = '';
    ECOCAN.Motor2_RUN_STATUS.fields{5}.start_bit = 32;
    ECOCAN.Motor2_RUN_STATUS.fields{5}.bit_length = 8;
    ECOCAN.Motor2_RUN_STATUS.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor2_RUN_STATUS.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.Motor2_RUN_STATUS.fields{5}.scale = 1;
    ECOCAN.Motor2_RUN_STATUS.fields{5}.offset = 0;
    ECOCAN.Motor2_RUN_STATUS.fields{5}.multiplex_type = 'Standard';
    ECOCAN.Motor2_RUN_STATUS.fields{5}.multiplex_value = 0;

    ECOCAN.Motor2_RUN_STATUS.fields{6}.name = 'SubtotalMileage';
    ECOCAN.Motor2_RUN_STATUS.fields{6}.units = 'km';
    ECOCAN.Motor2_RUN_STATUS.fields{6}.start_bit = 40;
    ECOCAN.Motor2_RUN_STATUS.fields{6}.bit_length = 16;
    ECOCAN.Motor2_RUN_STATUS.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor2_RUN_STATUS.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.Motor2_RUN_STATUS.fields{6}.scale = 0.1;
    ECOCAN.Motor2_RUN_STATUS.fields{6}.offset = 0;
    ECOCAN.Motor2_RUN_STATUS.fields{6}.multiplex_type = 'Standard';
    ECOCAN.Motor2_RUN_STATUS.fields{6}.multiplex_value = 0;


%%
%Network Node:Motor2
%Message Name:Motor2_ELEC_STATUS
%Message Number:9
case 'Motor2_ELEC_STATUS'
    ECOCAN.Motor2_ELEC_STATUS = struct;
    ECOCAN.Motor2_ELEC_STATUS.name = 'Motor2_ELEC_STATUS';
    ECOCAN.Motor2_ELEC_STATUS.description = 'Motor2_ELEC_STATUS';
    ECOCAN.Motor2_ELEC_STATUS.protocol  = 'ECOCAN';
    ECOCAN.Motor2_ELEC_STATUS.id = hex2dec('F6');
    ECOCAN.Motor2_ELEC_STATUS.idext = 'STANDARD';
    ECOCAN.Motor2_ELEC_STATUS.payload_size =8;
    ECOCAN.Motor2_ELEC_STATUS.interval =50;

    ECOCAN.Motor2_ELEC_STATUS.fields{1}.name = 'DC_LinkVoltage';
    ECOCAN.Motor2_ELEC_STATUS.fields{1}.units = 'V';
    ECOCAN.Motor2_ELEC_STATUS.fields{1}.start_bit = 0;
    ECOCAN.Motor2_ELEC_STATUS.fields{1}.bit_length = 16;
    ECOCAN.Motor2_ELEC_STATUS.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor2_ELEC_STATUS.fields{1}.data_type = 'SIGNED';
    ECOCAN.Motor2_ELEC_STATUS.fields{1}.scale = 0.1;
    ECOCAN.Motor2_ELEC_STATUS.fields{1}.offset = 0;
    ECOCAN.Motor2_ELEC_STATUS.fields{1}.multiplex_type = 'Standard';
    ECOCAN.Motor2_ELEC_STATUS.fields{1}.multiplex_value = 0;

    ECOCAN.Motor2_ELEC_STATUS.fields{2}.name = 'DC_LinkCurrent';
    ECOCAN.Motor2_ELEC_STATUS.fields{2}.units = 'A';
    ECOCAN.Motor2_ELEC_STATUS.fields{2}.start_bit = 16;
    ECOCAN.Motor2_ELEC_STATUS.fields{2}.bit_length = 16;
    ECOCAN.Motor2_ELEC_STATUS.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.Motor2_ELEC_STATUS.fields{2}.data_type = 'SIGNED';
    ECOCAN.Motor2_ELEC_STATUS.fields{2}.scale = 0.1;
    ECOCAN.Motor2_ELEC_STATUS.fields{2}.offset = 0;
    ECOCAN.Motor2_ELEC_STATUS.fields{2}.multiplex_type = 'Standard';
    ECOCAN.Motor2_ELEC_STATUS.fields{2}.multiplex_value = 0;


%%
%Network Node:CCU
%Message Name:CCU_Status_VCU
%Message Number:10
case 'CCU_Status_VCU'
    ECOCAN.CCU_Status_VCU = struct;
    ECOCAN.CCU_Status_VCU.name = 'CCU_Status_VCU';
    ECOCAN.CCU_Status_VCU.description = 'CCU_Status_VCU';
    ECOCAN.CCU_Status_VCU.protocol  = 'ECOCAN';
    ECOCAN.CCU_Status_VCU.id = hex2dec('C9');
    ECOCAN.CCU_Status_VCU.idext = 'STANDARD';
    ECOCAN.CCU_Status_VCU.payload_size =7;
    ECOCAN.CCU_Status_VCU.interval =-1;

    ECOCAN.CCU_Status_VCU.fields{1}.name = 'DccOutVoltage';
    ECOCAN.CCU_Status_VCU.fields{1}.units = 'V';
    ECOCAN.CCU_Status_VCU.fields{1}.start_bit = 0;
    ECOCAN.CCU_Status_VCU.fields{1}.bit_length = 14;
    ECOCAN.CCU_Status_VCU.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{1}.scale = 0.01;
    ECOCAN.CCU_Status_VCU.fields{1}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{1}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{1}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{2}.name = 'DccOutCurrent';
    ECOCAN.CCU_Status_VCU.fields{2}.units = 'A';
    ECOCAN.CCU_Status_VCU.fields{2}.start_bit = 14;
    ECOCAN.CCU_Status_VCU.fields{2}.bit_length = 12;
    ECOCAN.CCU_Status_VCU.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{2}.scale = 0.1;
    ECOCAN.CCU_Status_VCU.fields{2}.offset = -204.8;
    ECOCAN.CCU_Status_VCU.fields{2}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{2}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{3}.name = 'InputCurrent';
    ECOCAN.CCU_Status_VCU.fields{3}.units = 'A';
    ECOCAN.CCU_Status_VCU.fields{3}.start_bit = 26;
    ECOCAN.CCU_Status_VCU.fields{3}.bit_length = 12;
    ECOCAN.CCU_Status_VCU.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{3}.scale = 0.1;
    ECOCAN.CCU_Status_VCU.fields{3}.offset = -204.8;
    ECOCAN.CCU_Status_VCU.fields{3}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{3}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{4}.name = 'ControlMode';
    ECOCAN.CCU_Status_VCU.fields{4}.units = '';
    ECOCAN.CCU_Status_VCU.fields{4}.start_bit = 40;
    ECOCAN.CCU_Status_VCU.fields{4}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{4}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{4}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{4}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{4}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{5}.name = 'RegenerateMode';
    ECOCAN.CCU_Status_VCU.fields{5}.units = '';
    ECOCAN.CCU_Status_VCU.fields{5}.start_bit = 41;
    ECOCAN.CCU_Status_VCU.fields{5}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{5}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{5}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{5}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{5}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{6}.name = 'FaultControl';
    ECOCAN.CCU_Status_VCU.fields{6}.units = '';
    ECOCAN.CCU_Status_VCU.fields{6}.start_bit = 42;
    ECOCAN.CCU_Status_VCU.fields{6}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{6}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{6}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{6}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{6}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{7}.name = 'UnderBattVolt';
    ECOCAN.CCU_Status_VCU.fields{7}.units = '';
    ECOCAN.CCU_Status_VCU.fields{7}.start_bit = 43;
    ECOCAN.CCU_Status_VCU.fields{7}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{7}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{7}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{7}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{7}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{7}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{8}.name = 'OverBattVolt';
    ECOCAN.CCU_Status_VCU.fields{8}.units = '';
    ECOCAN.CCU_Status_VCU.fields{8}.start_bit = 44;
    ECOCAN.CCU_Status_VCU.fields{8}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{8}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{8}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{8}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{8}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{8}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{8}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{9}.name = 'OverInd1Curr';
    ECOCAN.CCU_Status_VCU.fields{9}.units = '';
    ECOCAN.CCU_Status_VCU.fields{9}.start_bit = 45;
    ECOCAN.CCU_Status_VCU.fields{9}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{9}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{9}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{9}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{9}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{9}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{9}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{10}.name = 'OverInd2Curr';
    ECOCAN.CCU_Status_VCU.fields{10}.units = '';
    ECOCAN.CCU_Status_VCU.fields{10}.start_bit = 46;
    ECOCAN.CCU_Status_VCU.fields{10}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{10}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{10}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{10}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{10}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{10}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{10}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{11}.name = 'OverInd3Curr';
    ECOCAN.CCU_Status_VCU.fields{11}.units = '';
    ECOCAN.CCU_Status_VCU.fields{11}.start_bit = 47;
    ECOCAN.CCU_Status_VCU.fields{11}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{11}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{11}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{11}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{11}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{11}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{11}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{12}.name = 'Leg1Failure';
    ECOCAN.CCU_Status_VCU.fields{12}.units = '';
    ECOCAN.CCU_Status_VCU.fields{12}.start_bit = 48;
    ECOCAN.CCU_Status_VCU.fields{12}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{12}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{12}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{12}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{12}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{12}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{12}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{13}.name = 'Leg2Failure';
    ECOCAN.CCU_Status_VCU.fields{13}.units = '';
    ECOCAN.CCU_Status_VCU.fields{13}.start_bit = 49;
    ECOCAN.CCU_Status_VCU.fields{13}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{13}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{13}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{13}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{13}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{13}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{13}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{14}.name = 'Leg3Failure';
    ECOCAN.CCU_Status_VCU.fields{14}.units = '';
    ECOCAN.CCU_Status_VCU.fields{14}.start_bit = 50;
    ECOCAN.CCU_Status_VCU.fields{14}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{14}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{14}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{14}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{14}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{14}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{14}.multiplex_value = 0;

    ECOCAN.CCU_Status_VCU.fields{15}.name = 'OverOutVolt';
    ECOCAN.CCU_Status_VCU.fields{15}.units = '';
    ECOCAN.CCU_Status_VCU.fields{15}.start_bit = 51;
    ECOCAN.CCU_Status_VCU.fields{15}.bit_length = 1;
    ECOCAN.CCU_Status_VCU.fields{15}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_Status_VCU.fields{15}.data_type = 'UNSIGNED';
    ECOCAN.CCU_Status_VCU.fields{15}.scale = 1;
    ECOCAN.CCU_Status_VCU.fields{15}.offset = 0;
    ECOCAN.CCU_Status_VCU.fields{15}.multiplex_type = 'Standard';
    ECOCAN.CCU_Status_VCU.fields{15}.multiplex_value = 0;


%%
%Network Node:CCU
%Message Name:CCU_InductorStatus
%Message Number:11
case 'CCU_InductorStatus'
    ECOCAN.CCU_InductorStatus = struct;
    ECOCAN.CCU_InductorStatus.name = 'CCU_InductorStatus';
    ECOCAN.CCU_InductorStatus.description = 'CCU_InductorStatus';
    ECOCAN.CCU_InductorStatus.protocol  = 'ECOCAN';
    ECOCAN.CCU_InductorStatus.id = hex2dec('CA');
    ECOCAN.CCU_InductorStatus.idext = 'STANDARD';
    ECOCAN.CCU_InductorStatus.payload_size =5;
    ECOCAN.CCU_InductorStatus.interval =-1;

    ECOCAN.CCU_InductorStatus.fields{1}.name = 'Inductor1Curr';
    ECOCAN.CCU_InductorStatus.fields{1}.units = 'A';
    ECOCAN.CCU_InductorStatus.fields{1}.start_bit = 0;
    ECOCAN.CCU_InductorStatus.fields{1}.bit_length = 11;
    ECOCAN.CCU_InductorStatus.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_InductorStatus.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.CCU_InductorStatus.fields{1}.scale = 0.1;
    ECOCAN.CCU_InductorStatus.fields{1}.offset = -102.4;
    ECOCAN.CCU_InductorStatus.fields{1}.multiplex_type = 'Standard';
    ECOCAN.CCU_InductorStatus.fields{1}.multiplex_value = 0;

    ECOCAN.CCU_InductorStatus.fields{2}.name = 'Inductor2Curr';
    ECOCAN.CCU_InductorStatus.fields{2}.units = 'A';
    ECOCAN.CCU_InductorStatus.fields{2}.start_bit = 11;
    ECOCAN.CCU_InductorStatus.fields{2}.bit_length = 11;
    ECOCAN.CCU_InductorStatus.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_InductorStatus.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.CCU_InductorStatus.fields{2}.scale = 0.1;
    ECOCAN.CCU_InductorStatus.fields{2}.offset = -102.4;
    ECOCAN.CCU_InductorStatus.fields{2}.multiplex_type = 'Standard';
    ECOCAN.CCU_InductorStatus.fields{2}.multiplex_value = 0;

    ECOCAN.CCU_InductorStatus.fields{3}.name = 'Inductor3Curr';
    ECOCAN.CCU_InductorStatus.fields{3}.units = 'A';
    ECOCAN.CCU_InductorStatus.fields{3}.start_bit = 22;
    ECOCAN.CCU_InductorStatus.fields{3}.bit_length = 11;
    ECOCAN.CCU_InductorStatus.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.CCU_InductorStatus.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.CCU_InductorStatus.fields{3}.scale = 0.1;
    ECOCAN.CCU_InductorStatus.fields{3}.offset = -102.4;
    ECOCAN.CCU_InductorStatus.fields{3}.multiplex_type = 'Standard';
    ECOCAN.CCU_InductorStatus.fields{3}.multiplex_value = 0;


%%
%Network Node:SCG
%Message Name:SCG_Status_VCU
%Message Number:12
case 'SCG_Status_VCU'
    ECOCAN.SCG_Status_VCU = struct;
    ECOCAN.SCG_Status_VCU.name = 'SCG_Status_VCU';
    ECOCAN.SCG_Status_VCU.description = 'SCG_Status_VCU';
    ECOCAN.SCG_Status_VCU.protocol  = 'ECOCAN';
    ECOCAN.SCG_Status_VCU.id = hex2dec('12D');
    ECOCAN.SCG_Status_VCU.idext = 'STANDARD';
    ECOCAN.SCG_Status_VCU.payload_size =8;
    ECOCAN.SCG_Status_VCU.interval =-1;

    ECOCAN.SCG_Status_VCU.fields{1}.name = 'DccOutVoltage';
    ECOCAN.SCG_Status_VCU.fields{1}.units = 'V';
    ECOCAN.SCG_Status_VCU.fields{1}.start_bit = 0;
    ECOCAN.SCG_Status_VCU.fields{1}.bit_length = 14;
    ECOCAN.SCG_Status_VCU.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{1}.scale = 0.01;
    ECOCAN.SCG_Status_VCU.fields{1}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{1}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{1}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{2}.name = 'DccOutCurrent';
    ECOCAN.SCG_Status_VCU.fields{2}.units = 'A';
    ECOCAN.SCG_Status_VCU.fields{2}.start_bit = 14;
    ECOCAN.SCG_Status_VCU.fields{2}.bit_length = 12;
    ECOCAN.SCG_Status_VCU.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{2}.scale = 0.1;
    ECOCAN.SCG_Status_VCU.fields{2}.offset = -204.8;
    ECOCAN.SCG_Status_VCU.fields{2}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{2}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{3}.name = 'GenVoltage';
    ECOCAN.SCG_Status_VCU.fields{3}.units = 'V';
    ECOCAN.SCG_Status_VCU.fields{3}.start_bit = 26;
    ECOCAN.SCG_Status_VCU.fields{3}.bit_length = 14;
    ECOCAN.SCG_Status_VCU.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{3}.scale = 0.01;
    ECOCAN.SCG_Status_VCU.fields{3}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{3}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{3}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{4}.name = 'GenCurrent';
    ECOCAN.SCG_Status_VCU.fields{4}.units = 'A';
    ECOCAN.SCG_Status_VCU.fields{4}.start_bit = 40;
    ECOCAN.SCG_Status_VCU.fields{4}.bit_length = 12;
    ECOCAN.SCG_Status_VCU.fields{4}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{4}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{4}.scale = 0.1;
    ECOCAN.SCG_Status_VCU.fields{4}.offset = -204.8;
    ECOCAN.SCG_Status_VCU.fields{4}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{4}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{5}.name = 'ControlMode';
    ECOCAN.SCG_Status_VCU.fields{5}.units = '';
    ECOCAN.SCG_Status_VCU.fields{5}.start_bit = 52;
    ECOCAN.SCG_Status_VCU.fields{5}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{5}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{5}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{5}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{5}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{5}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{5}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{6}.name = 'AcRelayStatus';
    ECOCAN.SCG_Status_VCU.fields{6}.units = '';
    ECOCAN.SCG_Status_VCU.fields{6}.start_bit = 53;
    ECOCAN.SCG_Status_VCU.fields{6}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{6}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{6}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{6}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{6}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{6}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{6}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{7}.name = 'LinkPosRelay';
    ECOCAN.SCG_Status_VCU.fields{7}.units = '';
    ECOCAN.SCG_Status_VCU.fields{7}.start_bit = 54;
    ECOCAN.SCG_Status_VCU.fields{7}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{7}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{7}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{7}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{7}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{7}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{7}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{8}.name = 'FaultControl';
    ECOCAN.SCG_Status_VCU.fields{8}.units = '';
    ECOCAN.SCG_Status_VCU.fields{8}.start_bit = 55;
    ECOCAN.SCG_Status_VCU.fields{8}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{8}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{8}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{8}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{8}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{8}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{8}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{9}.name = 'OverOutVolt';
    ECOCAN.SCG_Status_VCU.fields{9}.units = '';
    ECOCAN.SCG_Status_VCU.fields{9}.start_bit = 56;
    ECOCAN.SCG_Status_VCU.fields{9}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{9}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{9}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{9}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{9}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{9}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{9}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{10}.name = 'OverInd1Curr';
    ECOCAN.SCG_Status_VCU.fields{10}.units = '';
    ECOCAN.SCG_Status_VCU.fields{10}.start_bit = 57;
    ECOCAN.SCG_Status_VCU.fields{10}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{10}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{10}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{10}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{10}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{10}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{10}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{11}.name = 'OverInd2Curr';
    ECOCAN.SCG_Status_VCU.fields{11}.units = '';
    ECOCAN.SCG_Status_VCU.fields{11}.start_bit = 58;
    ECOCAN.SCG_Status_VCU.fields{11}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{11}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{11}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{11}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{11}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{11}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{11}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{12}.name = 'OverInd3Curr';
    ECOCAN.SCG_Status_VCU.fields{12}.units = '';
    ECOCAN.SCG_Status_VCU.fields{12}.start_bit = 59;
    ECOCAN.SCG_Status_VCU.fields{12}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{12}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{12}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{12}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{12}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{12}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{12}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{13}.name = 'Leg1Failure';
    ECOCAN.SCG_Status_VCU.fields{13}.units = '';
    ECOCAN.SCG_Status_VCU.fields{13}.start_bit = 60;
    ECOCAN.SCG_Status_VCU.fields{13}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{13}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{13}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{13}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{13}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{13}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{13}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{14}.name = 'Leg2Failure';
    ECOCAN.SCG_Status_VCU.fields{14}.units = '';
    ECOCAN.SCG_Status_VCU.fields{14}.start_bit = 61;
    ECOCAN.SCG_Status_VCU.fields{14}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{14}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{14}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{14}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{14}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{14}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{14}.multiplex_value = 0;

    ECOCAN.SCG_Status_VCU.fields{15}.name = 'Leg3Failure';
    ECOCAN.SCG_Status_VCU.fields{15}.units = '';
    ECOCAN.SCG_Status_VCU.fields{15}.start_bit = 62;
    ECOCAN.SCG_Status_VCU.fields{15}.bit_length = 1;
    ECOCAN.SCG_Status_VCU.fields{15}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_Status_VCU.fields{15}.data_type = 'UNSIGNED';
    ECOCAN.SCG_Status_VCU.fields{15}.scale = 1;
    ECOCAN.SCG_Status_VCU.fields{15}.offset = 0;
    ECOCAN.SCG_Status_VCU.fields{15}.multiplex_type = 'Standard';
    ECOCAN.SCG_Status_VCU.fields{15}.multiplex_value = 0;


%%
%Network Node:SCG
%Message Name:SCG_ICE_Status
%Message Number:13
case 'SCG_ICE_Status'
    ECOCAN.SCG_ICE_Status = struct;
    ECOCAN.SCG_ICE_Status.name = 'SCG_ICE_Status';
    ECOCAN.SCG_ICE_Status.description = 'SCG_ICE_Status';
    ECOCAN.SCG_ICE_Status.protocol  = 'ECOCAN';
    ECOCAN.SCG_ICE_Status.id = hex2dec('12E');
    ECOCAN.SCG_ICE_Status.idext = 'STANDARD';
    ECOCAN.SCG_ICE_Status.payload_size =5;
    ECOCAN.SCG_ICE_Status.interval =-1;

    ECOCAN.SCG_ICE_Status.fields{1}.name = 'MotorTorque';
    ECOCAN.SCG_ICE_Status.fields{1}.units = 'Nm';
    ECOCAN.SCG_ICE_Status.fields{1}.start_bit = 0;
    ECOCAN.SCG_ICE_Status.fields{1}.bit_length = 16;
    ECOCAN.SCG_ICE_Status.fields{1}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_ICE_Status.fields{1}.data_type = 'UNSIGNED';
    ECOCAN.SCG_ICE_Status.fields{1}.scale = 1;
    ECOCAN.SCG_ICE_Status.fields{1}.offset = -5000;
    ECOCAN.SCG_ICE_Status.fields{1}.multiplex_type = 'Standard';
    ECOCAN.SCG_ICE_Status.fields{1}.multiplex_value = 0;

    ECOCAN.SCG_ICE_Status.fields{2}.name = 'MotorSpeed';
    ECOCAN.SCG_ICE_Status.fields{2}.units = 'rpm';
    ECOCAN.SCG_ICE_Status.fields{2}.start_bit = 16;
    ECOCAN.SCG_ICE_Status.fields{2}.bit_length = 16;
    ECOCAN.SCG_ICE_Status.fields{2}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_ICE_Status.fields{2}.data_type = 'UNSIGNED';
    ECOCAN.SCG_ICE_Status.fields{2}.scale = 1;
    ECOCAN.SCG_ICE_Status.fields{2}.offset = -15000;
    ECOCAN.SCG_ICE_Status.fields{2}.multiplex_type = 'Standard';
    ECOCAN.SCG_ICE_Status.fields{2}.multiplex_value = 0;

    ECOCAN.SCG_ICE_Status.fields{3}.name = 'Throttle';
    ECOCAN.SCG_ICE_Status.fields{3}.units = '';
    ECOCAN.SCG_ICE_Status.fields{3}.start_bit = 32;
    ECOCAN.SCG_ICE_Status.fields{3}.bit_length = 8;
    ECOCAN.SCG_ICE_Status.fields{3}.byte_order = 'LITTLE_ENDIAN';
    ECOCAN.SCG_ICE_Status.fields{3}.data_type = 'UNSIGNED';
    ECOCAN.SCG_ICE_Status.fields{3}.scale = 1;
    ECOCAN.SCG_ICE_Status.fields{3}.offset = 0;
    ECOCAN.SCG_ICE_Status.fields{3}.multiplex_type = 'Standard';
    ECOCAN.SCG_ICE_Status.fields{3}.multiplex_value = 0;


  end
  try
    msg = ECOCAN.(msgname);
  catch
  end
end
end
