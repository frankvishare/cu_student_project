void IMPL(conv_fprop1)(HLS_COMMON_ARG Layer1 *input_layer1, Layer2 *input_layer2, Layer1 *c1_conv_layer1, Layer2 *c1_conv_layer2, bool pconnection[96]) ;
void IMPL(conv_fprop2)(HLS_COMMON_ARG Layer1 *s2_pooling_layer1, Layer2 *s2_pooling_layer2, Layer1 *c3_conv_layer1, Layer2 *c3_conv_layer2, bool pconnection[96]) ;
void IMPL(conv_fprop3)(HLS_COMMON_ARG Layer1 *s4_pooling_layer1, Layer2 *s4_pooling_layer2, Layer1 *c5_conv_layer1, Layer2 *c5_conv_layer2, bool pconnection[96]) ;
void IMPL(max_pooling_fprop1)(HLS_COMMON_ARG Layer1 *c1_conv_layer1, Layer2 *c1_conv_layer2, Layer1 *s2_pooling_layer1, Layer2 *s2_pooling_layer2) ;
void IMPL(max_pooling_fprop2)(HLS_COMMON_ARG Layer1 *c3_conv_layer1, Layer2 *c3_conv_layer2, Layer1 *s4_pooling_layer1, Layer2 *s4_pooling_layer2) ;
void IMPL(fully_connected_fprop)(HLS_COMMON_ARG Layer1 *c5_conv_layer1, Layer2 *c5_conv_layer2, Layer1 *output_layer1, Layer2 *output_layer2) ;