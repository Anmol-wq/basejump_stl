
`ifndef BSG_MEM_2R1W_SYNC_MACROS_VH
`define BSG_MEM_2R1W_SYNC_MACROS_VH

`define bsg_mem_2r1w_sync_macro(words,bits,tag)      \
  if (harden_p && els_p == words && width_p == bits) \
    begin: macro                                     \
      bsg_mem_2r1w_sync_w``bits``_d``words``_``tag``_hard mem (.*); \
    end: macro

`endif

