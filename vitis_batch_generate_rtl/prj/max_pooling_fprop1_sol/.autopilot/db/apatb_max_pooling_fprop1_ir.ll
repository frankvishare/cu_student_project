; ModuleID = '/home/duludulu/Documents/hls/vitis_batch_generate_rtl/prj/max_pooling_fprop1_sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct._Layer = type { i32, i32, i32, [120 x %struct._Map], i32, i32, i32, [1920 x %struct._Kernel], [1024 x double] }
%struct._Map = type { [1024 x double], [1024 x double], double, double }
%struct._Kernel = type { [25 x double], [25 x double] }

; Function Attrs: noinline
define void @apatb_max_pooling_fprop1_ir(i8 zeroext %ap_core, i8 zeroext %ap_part, i8 zeroext %ap_parent, %struct._Layer* noalias nocapture nonnull readonly %c1_conv_layer, %struct._Layer* noalias nocapture nonnull %s2_pooling_layer) local_unnamed_addr #0 {
entry:
  %.01 = call i8* @malloc(i64 4)
  %c1_conv_layer_copy.0 = bitcast i8* %.01 to i32*
  %.12 = call i8* @malloc(i64 4)
  %c1_conv_layer_copy.1 = bitcast i8* %.12 to i32*
  %.23 = call i8* @malloc(i64 4)
  %c1_conv_layer_copy.2 = bitcast i8* %.23 to i32*
  %.3.09 = call i8* @malloc(i64 983040)
  %c1_conv_layer_copy.3.0 = bitcast i8* %.3.09 to [120 x [1024 x double]]*
  %.3.110 = call i8* @malloc(i64 983040)
  %c1_conv_layer_copy.3.1 = bitcast i8* %.3.110 to [120 x [1024 x double]]*
  %.3.211 = call i8* @malloc(i64 960)
  %c1_conv_layer_copy.3.2 = bitcast i8* %.3.211 to [120 x double]*
  %.3.312 = call i8* @malloc(i64 960)
  %c1_conv_layer_copy.3.3 = bitcast i8* %.3.312 to [120 x double]*
  %.44 = call i8* @malloc(i64 4)
  %c1_conv_layer_copy.4 = bitcast i8* %.44 to i32*
  %.55 = call i8* @malloc(i64 4)
  %c1_conv_layer_copy.5 = bitcast i8* %.55 to i32*
  %.66 = call i8* @malloc(i64 4)
  %c1_conv_layer_copy.6 = bitcast i8* %.66 to i32*
  %.77 = call i8* @malloc(i64 983040)
  %c1_conv_layer_copy.7 = bitcast i8* %.77 to [1920 x i3200]*
  %.88 = call i8* @malloc(i64 8192)
  %c1_conv_layer_copy.8 = bitcast i8* %.88 to [1024 x double]*
  %.0 = call i8* @malloc(i64 4)
  %s2_pooling_layer_copy.0 = bitcast i8* %.0 to i32*
  %.1 = call i8* @malloc(i64 4)
  %s2_pooling_layer_copy.1 = bitcast i8* %.1 to i32*
  %.2 = call i8* @malloc(i64 4)
  %s2_pooling_layer_copy.2 = bitcast i8* %.2 to i32*
  %.3.0 = call i8* @malloc(i64 983040)
  %s2_pooling_layer_copy.3.0 = bitcast i8* %.3.0 to [120 x [1024 x double]]*
  %.3.1 = call i8* @malloc(i64 983040)
  %s2_pooling_layer_copy.3.1 = bitcast i8* %.3.1 to [120 x [1024 x double]]*
  %.3.2 = call i8* @malloc(i64 960)
  %s2_pooling_layer_copy.3.2 = bitcast i8* %.3.2 to [120 x double]*
  %.3.3 = call i8* @malloc(i64 960)
  %s2_pooling_layer_copy.3.3 = bitcast i8* %.3.3 to [120 x double]*
  %.4 = call i8* @malloc(i64 4)
  %s2_pooling_layer_copy.4 = bitcast i8* %.4 to i32*
  %.5 = call i8* @malloc(i64 4)
  %s2_pooling_layer_copy.5 = bitcast i8* %.5 to i32*
  %.6 = call i8* @malloc(i64 4)
  %s2_pooling_layer_copy.6 = bitcast i8* %.6 to i32*
  %.7 = call i8* @malloc(i64 983040)
  %s2_pooling_layer_copy.7 = bitcast i8* %.7 to [1920 x i3200]*
  %.8 = call i8* @malloc(i64 8192)
  %s2_pooling_layer_copy.8 = bitcast i8* %.8 to [1024 x double]*
  call fastcc void @copy_in(%struct._Layer* nonnull %c1_conv_layer, i32* %c1_conv_layer_copy.0, i32* %c1_conv_layer_copy.1, i32* %c1_conv_layer_copy.2, [120 x [1024 x double]]* %c1_conv_layer_copy.3.0, [120 x [1024 x double]]* %c1_conv_layer_copy.3.1, [120 x double]* %c1_conv_layer_copy.3.2, [120 x double]* %c1_conv_layer_copy.3.3, i32* %c1_conv_layer_copy.4, i32* %c1_conv_layer_copy.5, i32* %c1_conv_layer_copy.6, [1920 x i3200]* %c1_conv_layer_copy.7, [1024 x double]* %c1_conv_layer_copy.8, %struct._Layer* nonnull %s2_pooling_layer, i32* %s2_pooling_layer_copy.0, i32* %s2_pooling_layer_copy.1, i32* %s2_pooling_layer_copy.2, [120 x [1024 x double]]* %s2_pooling_layer_copy.3.0, [120 x [1024 x double]]* %s2_pooling_layer_copy.3.1, [120 x double]* %s2_pooling_layer_copy.3.2, [120 x double]* %s2_pooling_layer_copy.3.3, i32* %s2_pooling_layer_copy.4, i32* %s2_pooling_layer_copy.5, i32* %s2_pooling_layer_copy.6, [1920 x i3200]* %s2_pooling_layer_copy.7, [1024 x double]* %s2_pooling_layer_copy.8)
  call void @apatb_max_pooling_fprop1_hw(i8 %ap_core, i8 %ap_part, i8 %ap_parent, i32* %c1_conv_layer_copy.0, i32* %c1_conv_layer_copy.1, i32* %c1_conv_layer_copy.2, [120 x [1024 x double]]* %c1_conv_layer_copy.3.0, [120 x [1024 x double]]* %c1_conv_layer_copy.3.1, [120 x double]* %c1_conv_layer_copy.3.2, [120 x double]* %c1_conv_layer_copy.3.3, i32* %c1_conv_layer_copy.4, i32* %c1_conv_layer_copy.5, i32* %c1_conv_layer_copy.6, [1920 x i3200]* %c1_conv_layer_copy.7, [1024 x double]* %c1_conv_layer_copy.8, i32* %s2_pooling_layer_copy.0, i32* %s2_pooling_layer_copy.1, i32* %s2_pooling_layer_copy.2, [120 x [1024 x double]]* %s2_pooling_layer_copy.3.0, [120 x [1024 x double]]* %s2_pooling_layer_copy.3.1, [120 x double]* %s2_pooling_layer_copy.3.2, [120 x double]* %s2_pooling_layer_copy.3.3, i32* %s2_pooling_layer_copy.4, i32* %s2_pooling_layer_copy.5, i32* %s2_pooling_layer_copy.6, [1920 x i3200]* %s2_pooling_layer_copy.7, [1024 x double]* %s2_pooling_layer_copy.8)
  call void @copy_back(%struct._Layer* %c1_conv_layer, i32* %c1_conv_layer_copy.0, i32* %c1_conv_layer_copy.1, i32* %c1_conv_layer_copy.2, [120 x [1024 x double]]* %c1_conv_layer_copy.3.0, [120 x [1024 x double]]* %c1_conv_layer_copy.3.1, [120 x double]* %c1_conv_layer_copy.3.2, [120 x double]* %c1_conv_layer_copy.3.3, i32* %c1_conv_layer_copy.4, i32* %c1_conv_layer_copy.5, i32* %c1_conv_layer_copy.6, [1920 x i3200]* %c1_conv_layer_copy.7, [1024 x double]* %c1_conv_layer_copy.8, %struct._Layer* %s2_pooling_layer, i32* %s2_pooling_layer_copy.0, i32* %s2_pooling_layer_copy.1, i32* %s2_pooling_layer_copy.2, [120 x [1024 x double]]* %s2_pooling_layer_copy.3.0, [120 x [1024 x double]]* %s2_pooling_layer_copy.3.1, [120 x double]* %s2_pooling_layer_copy.3.2, [120 x double]* %s2_pooling_layer_copy.3.3, i32* %s2_pooling_layer_copy.4, i32* %s2_pooling_layer_copy.5, i32* %s2_pooling_layer_copy.6, [1920 x i3200]* %s2_pooling_layer_copy.7, [1024 x double]* %s2_pooling_layer_copy.8)
  call void @free(i8* %.01)
  call void @free(i8* %.12)
  call void @free(i8* %.23)
  call void @free(i8* %.3.09)
  call void @free(i8* %.3.110)
  call void @free(i8* %.3.211)
  call void @free(i8* %.3.312)
  call void @free(i8* %.44)
  call void @free(i8* %.55)
  call void @free(i8* %.66)
  call void @free(i8* %.77)
  call void @free(i8* %.88)
  call void @free(i8* %.0)
  call void @free(i8* %.1)
  call void @free(i8* %.2)
  call void @free(i8* %.3.0)
  call void @free(i8* %.3.1)
  call void @free(i8* %.3.2)
  call void @free(i8* %.3.3)
  call void @free(i8* %.4)
  call void @free(i8* %.5)
  call void @free(i8* %.6)
  call void @free(i8* %.7)
  call void @free(i8* %.8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%struct._Layer* readonly "unpacked"="0", i32* nocapture "unpacked"="1.0" %.0, i32* nocapture "unpacked"="1.1" %.1, i32* nocapture "unpacked"="1.2" %.2, [120 x [1024 x double]]* "unpacked"="1.3.0" %.3.0, [120 x [1024 x double]]* "unpacked"="1.3.1" %.3.1, [120 x double]* nocapture "unpacked"="1.3.2" %.3.2, [120 x double]* nocapture "unpacked"="1.3.3" %.3.3, i32* nocapture "unpacked"="1.4" %.4, i32* nocapture "unpacked"="1.5" %.5, i32* nocapture "unpacked"="1.6" %.6, [1920 x i3200]* "unpacked"="1.7" %.7, [1024 x double]* "unpacked"="1.8" %.8, %struct._Layer* readonly "unpacked"="2", i32* nocapture "unpacked"="3.0" %.01, i32* nocapture "unpacked"="3.1" %.12, i32* nocapture "unpacked"="3.2" %.23, [120 x [1024 x double]]* "unpacked"="3.3.0" %.3.01, [120 x [1024 x double]]* "unpacked"="3.3.1" %.3.12, [120 x double]* nocapture "unpacked"="3.3.2" %.3.23, [120 x double]* nocapture "unpacked"="3.3.3" %.3.34, i32* nocapture "unpacked"="3.4" %.44, i32* nocapture "unpacked"="3.5" %.55, i32* nocapture "unpacked"="3.6" %.66, [1920 x i3200]* "unpacked"="3.7" %.77, [1024 x double]* "unpacked"="3.8" %.88) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct._Layer(i32* %.0, i32* %.1, i32* %.2, [120 x [1024 x double]]* %.3.0, [120 x [1024 x double]]* %.3.1, [120 x double]* %.3.2, [120 x double]* %.3.3, i32* %.4, i32* %.5, i32* %.6, [1920 x i3200]* %.7, [1024 x double]* %.8, %struct._Layer* %0)
  call fastcc void @onebyonecpy_hls.p0struct._Layer(i32* %.01, i32* %.12, i32* %.23, [120 x [1024 x double]]* %.3.01, [120 x [1024 x double]]* %.3.12, [120 x double]* %.3.23, [120 x double]* %.3.34, i32* %.44, i32* %.55, i32* %.66, [1920 x i3200]* %.77, [1024 x double]* %.88, %struct._Layer* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a120struct._Map([120 x %struct._Map]* %dst, [120 x %struct._Map]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [120 x %struct._Map]* %src, null
  %1 = icmp eq [120 x %struct._Map]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond9 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond9, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx10 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %src, i64 0, i64 %for.loop.idx10, i32 0
  %dst.addr.02 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %dst, i64 0, i64 %for.loop.idx10, i32 0
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.addr.02, [1024 x double]* %src.addr.01, i64 1024)
  %src.addr.13 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %src, i64 0, i64 %for.loop.idx10, i32 1
  %dst.addr.14 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %dst, i64 0, i64 %for.loop.idx10, i32 1
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.addr.14, [1024 x double]* %src.addr.13, i64 1024)
  %src.addr.25 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %src, i64 0, i64 %for.loop.idx10, i32 2
  %dst.addr.26 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %dst, i64 0, i64 %for.loop.idx10, i32 2
  %3 = load double, double* %src.addr.25, align 8
  store double %3, double* %dst.addr.26, align 8
  %src.addr.37 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %src, i64 0, i64 %for.loop.idx10, i32 3
  %dst.addr.38 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %dst, i64 0, i64 %for.loop.idx10, i32 3
  %4 = load double, double* %src.addr.37, align 8
  store double %4, double* %dst.addr.38, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1024f64([1024 x double]* %dst, [1024 x double]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x double]* %src, null
  %1 = icmp eq [1024 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x double], [1024 x double]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1024 x double], [1024 x double]* %src, i64 0, i64 %for.loop.idx2
  %3 = load double, double* %src.addr, align 8
  store double %3, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1920struct._Kernel([1920 x %struct._Kernel]* %dst, [1920 x %struct._Kernel]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1920 x %struct._Kernel]* %src, null
  %1 = icmp eq [1920 x %struct._Kernel]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [1920 x %struct._Kernel], [1920 x %struct._Kernel]* %src, i64 0, i64 %for.loop.idx6, i32 0
  %dst.addr.02 = getelementptr [1920 x %struct._Kernel], [1920 x %struct._Kernel]* %dst, i64 0, i64 %for.loop.idx6, i32 0
  call void @arraycpy_hls.p0a25f64([25 x double]* %dst.addr.02, [25 x double]* %src.addr.01, i64 25)
  %src.addr.13 = getelementptr [1920 x %struct._Kernel], [1920 x %struct._Kernel]* %src, i64 0, i64 %for.loop.idx6, i32 1
  %dst.addr.14 = getelementptr [1920 x %struct._Kernel], [1920 x %struct._Kernel]* %dst, i64 0, i64 %for.loop.idx6, i32 1
  call void @arraycpy_hls.p0a25f64([25 x double]* %dst.addr.14, [25 x double]* %src.addr.13, i64 25)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a25f64([25 x double]* %dst, [25 x double]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [25 x double]* %src, null
  %1 = icmp eq [25 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [25 x double], [25 x double]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [25 x double], [25 x double]* %src, i64 0, i64 %for.loop.idx2
  %3 = load double, double* %src.addr, align 8
  store double %3, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%struct._Layer* "unpacked"="0", i32* nocapture readonly "unpacked"="1.0" %.0, i32* nocapture readonly "unpacked"="1.1" %.1, i32* nocapture readonly "unpacked"="1.2" %.2, [120 x [1024 x double]]* readonly "unpacked"="1.3.0" %.3.0, [120 x [1024 x double]]* readonly "unpacked"="1.3.1" %.3.1, [120 x double]* nocapture readonly "unpacked"="1.3.2" %.3.2, [120 x double]* nocapture readonly "unpacked"="1.3.3" %.3.3, i32* nocapture readonly "unpacked"="1.4" %.4, i32* nocapture readonly "unpacked"="1.5" %.5, i32* nocapture readonly "unpacked"="1.6" %.6, [1920 x i3200]* readonly "unpacked"="1.7" %.7, [1024 x double]* readonly "unpacked"="1.8" %.8, %struct._Layer* "unpacked"="2", i32* nocapture readonly "unpacked"="3.0" %.01, i32* nocapture readonly "unpacked"="3.1" %.12, i32* nocapture readonly "unpacked"="3.2" %.23, [120 x [1024 x double]]* readonly "unpacked"="3.3.0" %.3.01, [120 x [1024 x double]]* readonly "unpacked"="3.3.1" %.3.12, [120 x double]* nocapture readonly "unpacked"="3.3.2" %.3.23, [120 x double]* nocapture readonly "unpacked"="3.3.3" %.3.34, i32* nocapture readonly "unpacked"="3.4" %.44, i32* nocapture readonly "unpacked"="3.5" %.55, i32* nocapture readonly "unpacked"="3.6" %.66, [1920 x i3200]* readonly "unpacked"="3.7" %.77, [1024 x double]* readonly "unpacked"="3.8" %.88) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct._Layer.4.21(%struct._Layer* %0, i32* %.0, i32* %.1, i32* %.2, [120 x [1024 x double]]* %.3.0, [120 x [1024 x double]]* %.3.1, [120 x double]* %.3.2, [120 x double]* %.3.3, i32* %.4, i32* %.5, i32* %.6, [1920 x i3200]* %.7, [1024 x double]* %.8)
  call fastcc void @onebyonecpy_hls.p0struct._Layer.4.21(%struct._Layer* %1, i32* %.01, i32* %.12, i32* %.23, [120 x [1024 x double]]* %.3.01, [120 x [1024 x double]]* %.3.12, [120 x double]* %.3.23, [120 x double]* %.3.34, i32* %.44, i32* %.55, i32* %.66, [1920 x i3200]* %.77, [1024 x double]* %.88)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a120struct._Map.16([120 x [1024 x double]]* "unpacked"="0.0" %dst.0, [120 x [1024 x double]]* "unpacked"="0.1" %dst.1, [120 x double]* nocapture "unpacked"="0.2" %dst.2, [120 x double]* nocapture "unpacked"="0.3" %dst.3, [120 x %struct._Map]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [120 x %struct._Map]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %src, i64 0, i64 %for.loop.idx2, i32 0
  %dst.addr.02 = getelementptr [120 x [1024 x double]], [120 x [1024 x double]]* %dst.0, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.addr.02, [1024 x double]* %src.addr.01, i64 1024)
  %src.addr.13 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %src, i64 0, i64 %for.loop.idx2, i32 1
  %dst.addr.14 = getelementptr [120 x [1024 x double]], [120 x [1024 x double]]* %dst.1, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.addr.14, [1024 x double]* %src.addr.13, i64 1024)
  %src.addr.25 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %src, i64 0, i64 %for.loop.idx2, i32 2
  %dst.addr.26 = getelementptr [120 x double], [120 x double]* %dst.2, i64 0, i64 %for.loop.idx2
  %1 = load double, double* %src.addr.25, align 8
  store double %1, double* %dst.addr.26, align 8
  %src.addr.37 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %src, i64 0, i64 %for.loop.idx2, i32 3
  %dst.addr.38 = getelementptr [120 x double], [120 x double]* %dst.3, i64 0, i64 %for.loop.idx2
  %2 = load double, double* %src.addr.37, align 8
  store double %2, double* %dst.addr.38, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a120struct._Map.24([120 x %struct._Map]* "unpacked"="0" %dst, [120 x [1024 x double]]* readonly "unpacked"="1.0" %src.0, [120 x [1024 x double]]* readonly "unpacked"="1.1" %src.1, [120 x double]* nocapture readonly "unpacked"="1.2" %src.2, [120 x double]* nocapture readonly "unpacked"="1.3" %src.3, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [120 x %struct._Map]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [120 x [1024 x double]], [120 x [1024 x double]]* %src.0, i64 0, i64 %for.loop.idx2
  %dst.addr.02 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %dst, i64 0, i64 %for.loop.idx2, i32 0
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.addr.02, [1024 x double]* %src.addr.01, i64 1024)
  %src.addr.13 = getelementptr [120 x [1024 x double]], [120 x [1024 x double]]* %src.1, i64 0, i64 %for.loop.idx2
  %dst.addr.14 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %dst, i64 0, i64 %for.loop.idx2, i32 1
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.addr.14, [1024 x double]* %src.addr.13, i64 1024)
  %src.addr.25 = getelementptr [120 x double], [120 x double]* %src.2, i64 0, i64 %for.loop.idx2
  %dst.addr.26 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %dst, i64 0, i64 %for.loop.idx2, i32 2
  %1 = load double, double* %src.addr.25, align 8
  store double %1, double* %dst.addr.26, align 8
  %src.addr.37 = getelementptr [120 x double], [120 x double]* %src.3, i64 0, i64 %for.loop.idx2
  %dst.addr.38 = getelementptr [120 x %struct._Map], [120 x %struct._Map]* %dst, i64 0, i64 %for.loop.idx2, i32 3
  %2 = load double, double* %src.addr.37, align 8
  store double %2, double* %dst.addr.38, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct._Layer.4.21(%struct._Layer* "unpacked"="0" %dst, i32* nocapture readonly "unpacked"="1.0" %src.01, i32* nocapture readonly "unpacked"="1.1" %src.12, i32* nocapture readonly "unpacked"="1.2" %src.23, [120 x [1024 x double]]* readonly "unpacked"="1.3.0" %src.34.0, [120 x [1024 x double]]* readonly "unpacked"="1.3.1" %src.34.1, [120 x double]* nocapture readonly "unpacked"="1.3.2" %src.34.2, [120 x double]* nocapture readonly "unpacked"="1.3.3" %src.34.3, i32* nocapture readonly "unpacked"="1.4" %src.45, i32* nocapture readonly "unpacked"="1.5" %src.56, i32* nocapture readonly "unpacked"="1.6" %src.67, [1920 x i3200]* readonly "unpacked"="1.7" %src.78, [1024 x double]* readonly "unpacked"="1.8" %src.89) unnamed_addr #4 {
entry:
  %0 = icmp eq %struct._Layer* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %struct._Layer, %struct._Layer* %dst, i64 0, i32 0
  %1 = load i32, i32* %src.01, align 4
  store i32 %1, i32* %dst.0, align 4
  %dst.1 = getelementptr %struct._Layer, %struct._Layer* %dst, i64 0, i32 1
  %2 = load i32, i32* %src.12, align 4
  store i32 %2, i32* %dst.1, align 4
  %dst.2 = getelementptr %struct._Layer, %struct._Layer* %dst, i64 0, i32 2
  %3 = load i32, i32* %src.23, align 4
  store i32 %3, i32* %dst.2, align 4
  %dst.3 = getelementptr %struct._Layer, %struct._Layer* %dst, i64 0, i32 3
  call void @arraycpy_hls.p0a120struct._Map.24([120 x %struct._Map]* %dst.3, [120 x [1024 x double]]* %src.34.0, [120 x [1024 x double]]* %src.34.1, [120 x double]* %src.34.2, [120 x double]* %src.34.3, i64 120)
  %dst.4 = getelementptr %struct._Layer, %struct._Layer* %dst, i64 0, i32 4
  %4 = load i32, i32* %src.45, align 4
  store i32 %4, i32* %dst.4, align 4
  %dst.5 = getelementptr %struct._Layer, %struct._Layer* %dst, i64 0, i32 5
  %5 = load i32, i32* %src.56, align 4
  store i32 %5, i32* %dst.5, align 4
  %dst.6 = getelementptr %struct._Layer, %struct._Layer* %dst, i64 0, i32 6
  %6 = load i32, i32* %src.67, align 4
  store i32 %6, i32* %dst.6, align 4
  %dst.7 = getelementptr %struct._Layer, %struct._Layer* %dst, i64 0, i32 7
  call void @arraycpy_hls.p0a1920struct._Kernel.40([1920 x %struct._Kernel]* %dst.7, [1920 x i3200]* %src.78, i64 1920)
  %dst.8 = getelementptr %struct._Layer, %struct._Layer* %dst, i64 0, i32 8
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.8, [1024 x double]* %src.89, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1920struct._Kernel.40([1920 x %struct._Kernel]* %dst, [1920 x i3200]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1920 x i3200]* %src, null
  %1 = icmp eq [1920 x %struct._Kernel]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [1920 x i3200], [1920 x i3200]* %src, i64 0, i64 %for.loop.idx6
  %dst.addr.02 = getelementptr [1920 x %struct._Kernel], [1920 x %struct._Kernel]* %dst, i64 0, i64 %for.loop.idx6, i32 0
  call void @arraycpy_hls.p0a25f64.43([25 x double]* %dst.addr.02, i3200* %3, i64 0, i64 25)
  %dst.addr.14 = getelementptr [1920 x %struct._Kernel], [1920 x %struct._Kernel]* %dst, i64 0, i64 %for.loop.idx6, i32 1
  call void @arraycpy_hls.p0a25f64.43([25 x double]* %dst.addr.14, i3200* %3, i64 1600, i64 25)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a25f64.43([25 x double]* %dst, i3200* readonly %src, i64 %src_idx, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq i3200* %src, null
  %1 = icmp eq [25 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [25 x double], [25 x double]* %dst, i64 0, i64 %for.loop.idx2
  %3 = mul i64 64, %for.loop.idx2
  %4 = add i64 %src_idx, %3
  %5 = load i3200, i3200* %src, align 8
  %6 = zext i64 %4 to i3200
  %7 = lshr i3200 %5, %6
  %.partselect = trunc i3200 %7 to i64
  %8 = call double @_llvm.fpga.unpack.bits.f64.i64(i64 %.partselect)
  store double %8, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal double @_llvm.fpga.unpack.bits.f64.i64(i64 %A) #5 {
  %A.cast = bitcast i64 %A to double
  ret double %A.cast
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct._Layer(i32* nocapture "unpacked"="0.0" %dst.01, i32* nocapture "unpacked"="0.1" %dst.12, i32* nocapture "unpacked"="0.2" %dst.23, [120 x [1024 x double]]* "unpacked"="0.3.0" %dst.34.0, [120 x [1024 x double]]* "unpacked"="0.3.1" %dst.34.1, [120 x double]* nocapture "unpacked"="0.3.2" %dst.34.2, [120 x double]* nocapture "unpacked"="0.3.3" %dst.34.3, i32* nocapture "unpacked"="0.4" %dst.45, i32* nocapture "unpacked"="0.5" %dst.56, i32* nocapture "unpacked"="0.6" %dst.67, [1920 x i3200]* "unpacked"="0.7" %dst.78, [1024 x double]* "unpacked"="0.8" %dst.89, %struct._Layer* readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %struct._Layer* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %struct._Layer, %struct._Layer* %src, i64 0, i32 0
  %1 = load i32, i32* %src.0, align 4
  store i32 %1, i32* %dst.01, align 4
  %src.1 = getelementptr %struct._Layer, %struct._Layer* %src, i64 0, i32 1
  %2 = load i32, i32* %src.1, align 4
  store i32 %2, i32* %dst.12, align 4
  %src.2 = getelementptr %struct._Layer, %struct._Layer* %src, i64 0, i32 2
  %3 = load i32, i32* %src.2, align 4
  store i32 %3, i32* %dst.23, align 4
  %src.3 = getelementptr %struct._Layer, %struct._Layer* %src, i64 0, i32 3
  call void @arraycpy_hls.p0a120struct._Map.16([120 x [1024 x double]]* %dst.34.0, [120 x [1024 x double]]* %dst.34.1, [120 x double]* %dst.34.2, [120 x double]* %dst.34.3, [120 x %struct._Map]* %src.3, i64 120)
  %src.4 = getelementptr %struct._Layer, %struct._Layer* %src, i64 0, i32 4
  %4 = load i32, i32* %src.4, align 4
  store i32 %4, i32* %dst.45, align 4
  %src.5 = getelementptr %struct._Layer, %struct._Layer* %src, i64 0, i32 5
  %5 = load i32, i32* %src.5, align 4
  store i32 %5, i32* %dst.56, align 4
  %src.6 = getelementptr %struct._Layer, %struct._Layer* %src, i64 0, i32 6
  %6 = load i32, i32* %src.6, align 4
  store i32 %6, i32* %dst.67, align 4
  %src.7 = getelementptr %struct._Layer, %struct._Layer* %src, i64 0, i32 7
  call void @arraycpy_hls.p0a1920struct._Kernel.51([1920 x i3200]* %dst.78, [1920 x %struct._Kernel]* %src.7, i64 1920)
  %src.8 = getelementptr %struct._Layer, %struct._Layer* %src, i64 0, i32 8
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.89, [1024 x double]* %src.8, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1920struct._Kernel.51([1920 x i3200]* %dst, [1920 x %struct._Kernel]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1920 x %struct._Kernel]* %src, null
  %1 = icmp eq [1920 x i3200]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [1920 x %struct._Kernel], [1920 x %struct._Kernel]* %src, i64 0, i64 %for.loop.idx6, i32 0
  %3 = getelementptr [1920 x i3200], [1920 x i3200]* %dst, i64 0, i64 %for.loop.idx6
  call void @arraycpy_hls.p0a25f64.54(i3200* %3, i64 0, [25 x double]* %src.addr.01, i64 25)
  %src.addr.13 = getelementptr [1920 x %struct._Kernel], [1920 x %struct._Kernel]* %src, i64 0, i64 %for.loop.idx6, i32 1
  call void @arraycpy_hls.p0a25f64.54(i3200* %3, i64 1600, [25 x double]* %src.addr.13, i64 25)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a25f64.54(i3200* %dst, i64 %dst_idx, [25 x double]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [25 x double]* %src, null
  %1 = icmp eq i3200* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = mul i64 64, %for.loop.idx2
  %4 = add i64 %dst_idx, %3
  %src.addr = getelementptr [25 x double], [25 x double]* %src, i64 0, i64 %for.loop.idx2
  %5 = load double, double* %src.addr, align 8
  %6 = call i64 @_llvm.fpga.pack.bits.i64.f64(double %5)
  %7 = load i3200, i3200* %dst, align 8
  %8 = zext i64 %4 to i3200
  %9 = shl i3200 18446744073709551615, %8
  %10 = zext i64 %6 to i3200
  %11 = shl i3200 %10, %8
  %thr.xor1 = xor i3200 %9, -1
  %thr.and2 = and i3200 %7, %thr.xor1
  %thr.or3 = or i3200 %thr.and2, %11
  store i3200 %thr.or3, i3200* %dst, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i64 @_llvm.fpga.pack.bits.i64.f64(double %A) #5 {
  %A.cast = bitcast double %A to i64
  ret i64 %A.cast
}

declare void @apatb_max_pooling_fprop1_hw(i8, i8, i8, i32*, i32*, i32*, [120 x [1024 x double]]*, [120 x [1024 x double]]*, [120 x double]*, [120 x double]*, i32*, i32*, i32*, [1920 x i3200]*, [1024 x double]*, i32*, i32*, i32*, [120 x [1024 x double]]*, [120 x [1024 x double]]*, [120 x double]*, [120 x double]*, i32*, i32*, i32*, [1920 x i3200]*, [1024 x double]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%struct._Layer* "unpacked"="0", i32* nocapture readonly "unpacked"="1.0" %.0, i32* nocapture readonly "unpacked"="1.1" %.1, i32* nocapture readonly "unpacked"="1.2" %.2, [120 x [1024 x double]]* readonly "unpacked"="1.3.0" %.3.0, [120 x [1024 x double]]* readonly "unpacked"="1.3.1" %.3.1, [120 x double]* nocapture readonly "unpacked"="1.3.2" %.3.2, [120 x double]* nocapture readonly "unpacked"="1.3.3" %.3.3, i32* nocapture readonly "unpacked"="1.4" %.4, i32* nocapture readonly "unpacked"="1.5" %.5, i32* nocapture readonly "unpacked"="1.6" %.6, [1920 x i3200]* readonly "unpacked"="1.7" %.7, [1024 x double]* readonly "unpacked"="1.8" %.8, %struct._Layer* "unpacked"="2", i32* nocapture readonly "unpacked"="3.0" %.01, i32* nocapture readonly "unpacked"="3.1" %.12, i32* nocapture readonly "unpacked"="3.2" %.23, [120 x [1024 x double]]* readonly "unpacked"="3.3.0" %.3.01, [120 x [1024 x double]]* readonly "unpacked"="3.3.1" %.3.12, [120 x double]* nocapture readonly "unpacked"="3.3.2" %.3.23, [120 x double]* nocapture readonly "unpacked"="3.3.3" %.3.34, i32* nocapture readonly "unpacked"="3.4" %.44, i32* nocapture readonly "unpacked"="3.5" %.55, i32* nocapture readonly "unpacked"="3.6" %.66, [1920 x i3200]* readonly "unpacked"="3.7" %.77, [1024 x double]* readonly "unpacked"="3.8" %.88) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct._Layer.4.21(%struct._Layer* %1, i32* %.01, i32* %.12, i32* %.23, [120 x [1024 x double]]* %.3.01, [120 x [1024 x double]]* %.3.12, [120 x double]* %.3.23, [120 x double]* %.3.34, i32* %.44, i32* %.55, i32* %.66, [1920 x i3200]* %.77, [1024 x double]* %.88)
  ret void
}

declare void @max_pooling_fprop1_hw_stub(i8 zeroext, i8 zeroext, i8 zeroext, %struct._Layer* noalias nocapture nonnull readonly, %struct._Layer* noalias nocapture nonnull)

define void @max_pooling_fprop1_hw_stub_wrapper(i8, i8, i8, i32*, i32*, i32*, [120 x [1024 x double]]*, [120 x [1024 x double]]*, [120 x double]*, [120 x double]*, i32*, i32*, i32*, [1920 x i3200]*, [1024 x double]*, i32*, i32*, i32*, [120 x [1024 x double]]*, [120 x [1024 x double]]*, [120 x double]*, [120 x double]*, i32*, i32*, i32*, [1920 x i3200]*, [1024 x double]*) #6 {
entry:
  %27 = call i8* @malloc(i64 2744224)
  %28 = bitcast i8* %27 to %struct._Layer*
  %29 = call i8* @malloc(i64 2744224)
  %30 = bitcast i8* %29 to %struct._Layer*
  call void @copy_out(%struct._Layer* %28, i32* %3, i32* %4, i32* %5, [120 x [1024 x double]]* %6, [120 x [1024 x double]]* %7, [120 x double]* %8, [120 x double]* %9, i32* %10, i32* %11, i32* %12, [1920 x i3200]* %13, [1024 x double]* %14, %struct._Layer* %30, i32* %15, i32* %16, i32* %17, [120 x [1024 x double]]* %18, [120 x [1024 x double]]* %19, [120 x double]* %20, [120 x double]* %21, i32* %22, i32* %23, i32* %24, [1920 x i3200]* %25, [1024 x double]* %26)
  call void @max_pooling_fprop1_hw_stub(i8 %0, i8 %1, i8 %2, %struct._Layer* %28, %struct._Layer* %30)
  call void @copy_in(%struct._Layer* %28, i32* %3, i32* %4, i32* %5, [120 x [1024 x double]]* %6, [120 x [1024 x double]]* %7, [120 x double]* %8, [120 x double]* %9, i32* %10, i32* %11, i32* %12, [1920 x i3200]* %13, [1024 x double]* %14, %struct._Layer* %30, i32* %15, i32* %16, i32* %17, [120 x [1024 x double]]* %18, [120 x [1024 x double]]* %19, [120 x double]* %20, [120 x double]* %21, i32* %22, i32* %23, i32* %24, [1920 x i3200]* %25, [1024 x double]* %26)
  call void @free(i8* %27)
  call void @free(i8* %29)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { alwaysinline nounwind readnone willreturn }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
