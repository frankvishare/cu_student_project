set clock_constraint { \
    name clk \
    module hevc_loop_filter_chroma_8bit_hls \
    port ap_clk \
    period 3.3 \
    uncertainty 0.891 \
}

set all_path {}

set false_path {}

