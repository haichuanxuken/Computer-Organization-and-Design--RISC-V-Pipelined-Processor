
module mp3
(
	/*other signals*/
    input clk,
    output read,
    output write,
    output logic [31:0] address,
    output logic [255:0] wdata,
    input logic resp,
    input logic [255:0] rdata
);

// output of cache
logic read_a;
logic write_a;
logic [3:0] wmask_a;
logic [31:0] address_a;
logic [31:0] wdata_a;
logic resp_a;
logic [31:0] rdata_a;
logic read_b;
logic write_b;
logic [3:0] wmask_b;
logic [31:0] address_b;
logic [31:0] wdata_b;
logic resp_b;
logic [31:0] rdata_b;

logic [31:0] address_l2;
logic read_l2;
logic write_l2;
logic [255:0] rdata_l2;
logic [255:0] wdata_l2;
logic resp_l2;

//input of cache from arbitor
logic read_I, read_D;
logic write_I, write_D;
//logic [3:0] wmask_D;
logic [31:0] address_I, address_D;
logic [255:0] wdata_D;
logic resp_I, resp_D;
logic [255:0] rdata_I, rdata_D;

//performance unit
logic flush;
logic [1:0] jb_sel;
logic l1i_miss_sig;
logic l1d_miss_sig;
logic l2_miss_sig;
logic if_stall;
logic [31:0] cpu_l1d_address;
logic [31:0] cpu_l1d_rdata;
logic cpu_l1d_read;
logic cpu_l1d_resp;
logic mis_prediction;

//eviction write buffer
logic [31:0] l2_evict_address;
logic l2_evict_read;
logic l2_evict_write;
logic [255:0] l2_evict_rdata;
logic [255:0] l2_evict_wdata;
logic l2_evict_resp;

//eviction write buffer_L1
logic [31:0] l1_evict_address;
logic l1_evict_read;
logic l1_evict_write;
logic [255:0] l1_evict_rdata;
logic [255:0] l1_evict_wdata;
logic l1_evict_resp;
logic [31:0] MEM_PC;
mp3_cpu mp3_cpu
(
    .clk,
    .read_a,
    .write_a,
    .wmask_a,
    .address_a,
    .wdata_a,
    .resp_a,
    .rdata_a,
    .read_b,
    .write_b,
    .wmask_b,
    .address_b,
    .wdata_b,
    .resp_b,
    .rdata_b,
	 .flush,
	 .jb_sel,
	 .if_stall,
<<<<<<< HEAD

	 .MEM_PC
);

`ifndef CACHE_REPLACED
L1Icache instruction_cache
(
	.clk,
	.cpu_l1i_address(address_a),
	.cpu_l1i_rdata(rdata_a),
	.cpu_l1i_read(read_a),
	.cpu_l1i_resp(resp_a),

	.l1i_arbi_address(address_I),
	.l1i_arbi_rdata(rdata_I),
	.l1i_arbi_read(read_I),
	.l1i_arbi_resp(resp_I),

	.l1i_miss_sig
);

`ifndef USE_EWB
//L1 dcache without eviction_write_buffer

L1Dcache data_cache
(
	.clk,
   .cpu_l1d_address,
	.cpu_l1d_wdata(wdata_b),
	.cpu_l1d_read,
	.cpu_l1d_write(write_b),
	.cpu_l1d_byte_enable(wmask_b),

	.l1d_arbi_rdata(rdata_D),
	.l1d_arbi_resp(resp_D),
	.cpu_l1d_rdata,
	.cpu_l1d_resp,
	.l1d_arbi_address(address_D),
	.l1d_arbi_wdata(wdata_D),
	.l1d_arbi_read(read_D),
	.l1d_arbi_write(write_D),

	.l1d_miss_sig
);

`endif
`ifdef USE_EWB
L1Dcache data_cache
(
	.clk,
   .cpu_l1d_address,
	.cpu_l1d_wdata(wdata_b),
	.cpu_l1d_read,
	.cpu_l1d_write(write_b),
	.cpu_l1d_byte_enable(wmask_b),

	.l1d_arbi_rdata(l1_evict_rdata),
	.l1d_arbi_resp(l1_evict_resp),
	.cpu_l1d_rdata,
	.cpu_l1d_resp,
	.l1d_arbi_address(l1_evict_address),
	.l1d_arbi_wdata(l1_evict_wdata),
	.l1d_arbi_read(l1_evict_read),
	.l1d_arbi_write(l1_evict_write),

	.l1d_miss_sig
);

eviction_write_buffer eviction_write_buffer_L1D
(
	.clk,
	.address(l1_evict_address),
	.read(l1_evict_read),
	.write(l1_evict_write),
	.rdata(l1_evict_rdata),
	.wdata(l1_evict_wdata),
	.resp(l1_evict_resp),
	.pmem_address(address_D),
	.pmem_read(read_D),
	.pmem_write(write_D),
	.pmem_rdata(rdata_D),
	.pmem_wdata(wdata_D),
	.pmem_resp(resp_D)
);

arbitor #(.width(256)) arbitor
(
    .clk,
    // instruction cache signal
    .icache_read(read_I),
    .icache_address(address_I),
    .icache_rdata(rdata_I),
    .icache_resp(resp_I),

    // data cache signal
    .dcache_read(read_D),
    .dcache_write(write_D),
    .dcache_address(address_D),
    .dcache_wdata(wdata_D),
    .dcache_byte_enable(),
    .dcache_rdata(rdata_D),
    .dcache_resp(resp_D),

    //L2 cache signal
    .L2cache_read(read_l2),
    .L2cache_write(write_l2),
    .L2cache_address(address_l2),
    .L2cache_wdata(wdata_l2),
    .L2cache_byte_enable(),
    .L2cache_rdata(rdata_l2),
    .L2cache_resp(resp_l2)
);
`endif

`ifndef USE_EWB
//arbitor without victim cache

arbitor #(.width(256)) arbitor
(
    .clk,
    // instruction cache signal
    .icache_read(read_I),
    .icache_address(address_I),
    .icache_rdata(rdata_I),
    .icache_resp(resp_I),

    // data cache signal
    .dcache_read(read_D),
    .dcache_write(write_D),
    .dcache_address(address_D),
    .dcache_wdata(wdata_D),
    .dcache_byte_enable(),
    .dcache_rdata(rdata_D),
    .dcache_resp(resp_D),

    //L2 cache signal
    .L2cache_read(read_l2),
    .L2cache_write(write_l2),
    .L2cache_address(address_l2),
    .L2cache_wdata(wdata_l2),
    .L2cache_byte_enable(),
    .L2cache_rdata(rdata_l2),
    .L2cache_resp(resp_l2)
);

//l2 top level without eviction_write_buffer

L2cache L2cache
(
	.clk,
	.arbi_l2_address(address_l2),
	.arbi_l2_wdata(wdata_l2),
	.arbi_l2_read(read_l2),
	.arbi_l2_write(write_l2),
	.arbi_l2_rdata(rdata_l2),
	.arbi_l2_resp(resp_l2),
	.l2_pmem_address(address),
	.l2_pmem_wdata(wdata),
	.l2_pmem_read(read),
	.l2_pmem_write(write),
	.l2_pmem_rdata(rdata),
	.l2_pmem_resp(resp),
	.l2_miss_sig
);

`endif

`ifdef USE_EWB
L2cache L2cache
(
	.clk,
	.arbi_l2_address(address_l2),
	.arbi_l2_wdata(wdata_l2),
	.arbi_l2_read(read_l2),
	.arbi_l2_write(write_l2),
	.arbi_l2_rdata(rdata_l2),
	.arbi_l2_resp(resp_l2),
	.l2_pmem_address(l2_evict_address),
	.l2_pmem_wdata(l2_evict_wdata),
	.l2_pmem_read(l2_evict_read),
	.l2_pmem_write(l2_evict_write),
	.l2_pmem_rdata(l2_evict_rdata),
	.l2_pmem_resp(l2_evict_resp),
	.l2_miss_sig
);

eviction_write_buffer eviction_write_buffer_L2
(
	.clk,
	.address(l2_evict_address),
	.read(l2_evict_read),
	.write(l2_evict_write),
	.rdata(l2_evict_rdata),
	.wdata(l2_evict_wdata),
	.resp(l2_evict_resp),
	.pmem_address(address),
	.pmem_read(read),
	.pmem_write(write),
	.pmem_rdata(rdata),
	.pmem_wdata(wdata),
	.pmem_resp(resp)
);
`endif

performance_unit performance_unit
(
	.clk,
	.reset(0),
	.if_stall,
	.resp_l2,
	/*br*/
	.flush,
	.jb_sel,
	/*l1i*/
	.read_a,
	.l1i_miss_sig,
	/*l1d*/
	.read_b,
	.write_b,
	.l1d_miss_sig,
	/*l2*/
	.write_l2,
	.read_l2,
	.l2_miss_sig,
	/*arbitor conflict*/
	.read_I,
	.read_D,
	.write_D,
	/*user read ports*/
	.cpu_l1d_read,
	.address_b,
	.cpu_l1d_address,
	.cpu_l1d_rdata,
	.rdata_b,
	.resp_b,
	.cpu_l1d_resp
);
`endif
=======
	 .pcmux_sel(mis_prediction)
);

>>>>>>> 11a60ad49dfa47bd3f61c881fb7ee933c644d25e

cache instruction_cache
(
	.clk,
	.mem_address(address_a),
	.mem_rdata(rdata_a),
	.mem_read(read_a),
	.mem_resp(resp_a),
	.mem_write(0),

	.pmem_address(address_I),
	.pmem_rdata(rdata_I),
	.pmem_read(read_I),
<<<<<<< HEAD
	.pmem_resp(resp_I)
=======
	.pmem_resp(resp_I) ,
	.miss_sig(l1i_miss_sig)
>>>>>>> 11a60ad49dfa47bd3f61c881fb7ee933c644d25e
);
logic if_MEM_datamiss;
logic if_L1D_miss;
logic if_L2_miss;
assign if_MEM_datamiss=if_L2_miss;
cache data_cache
(
	.clk,
   .mem_address(address_b),
	.mem_wdata(wdata_b),
	.mem_read(read_b),
	.mem_write(write_b),
	.mem_byte_enable(wmask_b),
	.mem_rdata(rdata_b),
	.mem_resp(resp_b),

	.pmem_rdata(rdata_D),
	.pmem_resp(resp_D),
	.pmem_address(address_D),
	.pmem_wdata(wdata_D),
	.pmem_read(read_D),
<<<<<<< HEAD
	.pmem_write(write_D),

	.if_miss(if_L1D_miss)
=======
	.pmem_write(write_D) ,
	.miss_sig(l1d_miss_sig)
>>>>>>> 11a60ad49dfa47bd3f61c881fb7ee933c644d25e
);


arbitor #(.width(256)) arbitor
(
    .clk,
    // instruction cache signal
    .icache_read(read_I),
    .icache_address(address_I),
    .icache_rdata(rdata_I),
    .icache_resp(resp_I),

    // data cache signal
    .dcache_read(read_D),
    .dcache_write(write_D),
    .dcache_address(address_D),
    .dcache_wdata(wdata_D),
    .dcache_byte_enable(),
    .dcache_rdata(rdata_D),
    .dcache_resp(resp_D),

    //L2 cache signal
    .L2cache_read(read_l2),
    .L2cache_write(write_l2),
    .L2cache_address(address_l2),
    .L2cache_wdata(wdata_l2),
    .L2cache_byte_enable(),
    .L2cache_rdata(rdata_l2),
    .L2cache_resp(resp_l2)
);

 L2cache L2cache
(
	.mem_read(read_l2),
   .mem_write(write_l2),
   .mem_address(address_l2),
	.mem_wdata(wdata_l2),
   .mem_resp(resp_l2),
   .mem_rdata(rdata_l2),



	.pmem_resp(l2_evict_resp),
	.pmem_rdata(l2_evict_rdata),
	.pmem_read(l2_evict_read),
	.pmem_write(l2_evict_write),
	.pmem_address(l2_evict_address),
	.pmem_wdata(l2_evict_wdata),

	//.pmem_resp(resp),
	//.pmem_rdata(rdata),
	//.pmem_read(read),
	//.pmem_write(write),
	//.pmem_address(address),
	//.pmem_wdata(wdata),
	.if_miss(if_L2_miss)
	//.pmem_wdata(wdata),
	.clk,
	.miss_sig(l2_miss_sig)
);

	logic [31:0] L2_req_address;
	logic L2_req_read;
	logic L2_req_write;
	logic [255:0] L2_req_wdata;
	logic [255:0] L2_req_rdata;
	logic L2_req_resp;

eviction_write_buffer eviction_write_buffer_L2
(
	.clk,
	.address(l2_evict_address),
	.read(l2_evict_read),
	.write(l2_evict_write),
	.rdata(l2_evict_rdata),
	.wdata(l2_evict_wdata),
	.resp(l2_evict_resp),
	/*
	.pmem_address(address),
	.pmem_read(read),
	.pmem_write(write),
	.pmem_rdata(rdata),
	.pmem_wdata(wdata),
	.pmem_resp(resp)
	*/
	.pmem_address(L2_req_address),
	.pmem_read(L2_req_read),
	.pmem_write(L2_req_write),
	.pmem_rdata(L2_req_rdata),
	.pmem_wdata(L2_req_wdata),
	.pmem_resp(L2_req_resp)


);

logic [31:0] ORB;
logic prefetch_en;
RPT RPT
(
	.clk,
	// read & generate prefetching
	.IF_PC(address_a),  //address_a
	.new_instr(read_a&(!if_stall)),		//read_a&(!if_stall)
	.ORB, // outstanding request buffer
	.prefetch_en,
	// modify & update RPT on L2 data missing
	.MEM_addr(address_b),
	.if_MEM_datamiss,
	.MEM_PC

);

prefetcher prefetcher
(
	.clk,
	.ORB,
	.prefetch_en,
	// L2 cache
	.L2_req_address,
	.L2_req_read,
	.L2_req_write,
	.L2_req_wdata,
	.L2_req_rdata,
	.L2_req_resp,
	// pmem
	.pmem_address(address),
	.pmem_read(read),
	.pmem_write(write),
	.pmem_rdata(rdata),
	.pmem_wdata(wdata),
	.pmem_resp(resp)
);


`endif
`endif
);

`ifdef USE_PERFORM_UNIT
performance_unit performance_unit
(
	.clk,
	.reset(0),
	.if_stall,
	.resp_l2,
	/*br*/
	.flush,
	.jb_sel,
	/*l1i*/
	.read_a,
	.l1i_miss_sig,
	/*l1d*/
	.read_b,
	.write_b,
	.l1d_miss_sig,
	/*l2*/
	.write_l2,
	.read_l2,
	.l2_miss_sig,
	/*arbitor conflict*/
	.read_I,
	.read_D,
	.write_D,
	/*user read ports*/
	.cpu_l1d_read,
	.address_b,
	.cpu_l1d_address,
	.cpu_l1d_rdata,
	.rdata_b,
	.resp_b,
	.cpu_l1d_resp
);
`endif

endmodule : mp3
