void IMPL(conv_fprop1)(HLS_COMMON_ARG Layer *input_layer, Layer *c1_conv_layer, bool pconnection[96]) ;
void IMPL(conv_fprop2)(HLS_COMMON_ARG Layer *s2_pooling_la, Layer *c3_conv_layer, bool pconnection[96]) ;
void IMPL(conv_fprop3)(HLS_COMMON_ARG Layer *s4_pooling_layer, Layer *c5_conv_layer, bool pconnection[96]) ;
void IMPL(max_pooling_fprop1)(HLS_COMMON_ARG Layer *c1_conv_layer, Layer *s2_pooling_layer) ;
void IMPL(max_pooling_fprop2)(HLS_COMMON_ARG Layer *c3_conv_layer, Layer *s4_pooling_layer) ;
void IMPL(fully_connected_fprop)(HLS_COMMON_ARG Layer *c5_conv_layer, Layer *output_layer) ;