

//----------------------------------------------
#ifdef START_SECTION_CalRom   //calibration rom
  #pragma push
  #pragma section all_types ".__calibration_rom_data" ".__calibration_rom_data"  
  #undef START_SECTION_CalRom
#endif

#ifdef STOP_SECTION_CalRom  
  #pragma pop
  #undef STOP_SECTION_CalRom
#endif

//----------------------------------------------
#ifdef START_SECTION_BootCalRom   //calibration rom

#pragma push
#pragma section all_types ".boot_cal" ".boot_cal" 

  #undef START_SECTION_BootCalRom
#endif

#ifdef STOP_SECTION_BootCalRom  
  #pragma pop
  #undef STOP_SECTION_BootCalRom
#endif



//----------------------------------------------
#ifdef START_SECTION_FNVM
  #pragma push
  #pragma section all_types ".__fnvm_data"  ".__fnvm_data"
  #undef START_SECTION_FNVM 
#endif

#ifdef STOP_SECTION_FNVM  
  #pragma pop
  #undef STOP_SECTION_FNVM 
#endif
//----------------------------------------------
#ifdef START_SECTION_WriteBackRam   
  #pragma push
  #pragma section all_types ".__writeback_ram_data" ".__writeback_ram_data"
  #undef START_SECTION_WriteBackRam
#endif

#ifdef STOP_SECTION_WriteBackRam 
  #pragma pop
  #undef STOP_SECTION_WriteBackRam
#endif
//----------------------------------------------
#ifdef START_SECTION_FNVM_FLAG   
  #pragma push
  #pragma section all_types ".__fnvm_flag" ".__fnvm_flag"  
  #undef START_SECTION_FNVM_FLAG
#endif

#ifdef STOP_SECTION_FNVM_FLAG  
  #pragma pop
  #undef STOP_SECTION_FNVM_FLAG
#endif
//----------------------------------------------
#ifdef START_SECTION_UFNVM_FLAG   
  #pragma push
  #pragma section all_types ".__ufnvm_flag" ".__ufnvm_flag"  
  #undef START_SECTION_UFNVM_FLAG
#endif

#ifdef STOP_SECTION_UFNVM_FLAG  
  #pragma pop
  #undef STOP_SECTION_UFNVM_FLAG
#endif
//----------------------------------------------

#ifdef START_SECTION_AppRam   //measurement ram
  #pragma push
  #pragma section sdata_type ".__measurement_ram" ".__measurement_ram"
  #undef START_SECTION_AppRam
#endif

#ifdef STOP_SECTION_AppRam  
  #pragma pop
  #undef STOP_SECTION_AppRam
#endif
//----------------------------------------------

#ifdef START_SECTION_LLDRam   //measurement ram
  #pragma push
  #pragma section sdata_type ".__measurement_ram"  ".__measurement_ram"
  #undef START_SECTION_LLDRam 
#endif

#ifdef STOP_SECTION_LLDRam  
  #pragma pop
  #undef STOP_SECTION_LLDRam 
#endif













