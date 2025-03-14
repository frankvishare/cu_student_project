; ModuleID = '/home/duludulu/Documents/hls/vitis_batch_generate_rtl/prj/max_pooling_fprop2_sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct._Layer1 = type { i32, i32, i32, i32, i32, i32 }
%struct._Layer2 = type { [120 x [1024 x double]], [120 x [1024 x double]], [120 x double], [120 x double], [1920 x [25 x double]], [1920 x [25 x double]], [1024 x double] }

; Function Attrs: noinline
define void @apatb_max_pooling_fprop2_ir(i8 zeroext %ap_core, i8 zeroext %ap_part, i8 zeroext %ap_parent, %struct._Layer1* noalias nocapture nonnull readonly %c3_conv_layer1, %struct._Layer2* noalias nocapture nonnull readonly %c3_conv_layer2, %struct._Layer1* noalias nocapture nonnull readonly %s4_pooling_layer1, %struct._Layer2* noalias nocapture nonnull %s4_pooling_layer2) local_unnamed_addr #0 {
entry:
  %c3_conv_layer1_copy.0 = alloca i32, align 512
  %c3_conv_layer1_copy.1 = alloca i32, align 512
  %c3_conv_layer1_copy.2 = alloca i32, align 512
  %c3_conv_layer1_copy.3 = alloca i32, align 512
  %c3_conv_layer1_copy.4 = alloca i32, align 512
  %c3_conv_layer1_copy.5 = alloca i32, align 512
  %.0 = call i8* @malloc(i64 983040)
  %c3_conv_layer2_copy.0 = bitcast i8* %.0 to [120 x [1024 x double]]*
  %.1 = call i8* @malloc(i64 983040)
  %c3_conv_layer2_copy.1 = bitcast i8* %.1 to [120 x [1024 x double]]*
  %.2 = call i8* @malloc(i64 960)
  %c3_conv_layer2_copy.2 = bitcast i8* %.2 to [120 x double]*
  %.3 = call i8* @malloc(i64 960)
  %c3_conv_layer2_copy.3 = bitcast i8* %.3 to [120 x double]*
  %.4 = call i8* @malloc(i64 384000)
  %c3_conv_layer2_copy.4 = bitcast i8* %.4 to [1920 x [25 x double]]*
  %.5 = call i8* @malloc(i64 384000)
  %c3_conv_layer2_copy.5 = bitcast i8* %.5 to [1920 x [25 x double]]*
  %.6 = call i8* @malloc(i64 8192)
  %c3_conv_layer2_copy.6 = bitcast i8* %.6 to [1024 x double]*
  %s4_pooling_layer1_copy.0 = alloca i32, align 512
  %s4_pooling_layer1_copy.1 = alloca i32, align 512
  %s4_pooling_layer1_copy.2 = alloca i32, align 512
  %s4_pooling_layer1_copy.3 = alloca i32, align 512
  %s4_pooling_layer1_copy.4 = alloca i32, align 512
  %s4_pooling_layer1_copy.5 = alloca i32, align 512
  %.01 = call i8* @malloc(i64 983040)
  %s4_pooling_layer2_copy.0 = bitcast i8* %.01 to [120 x [1024 x double]]*
  %.12 = call i8* @malloc(i64 983040)
  %s4_pooling_layer2_copy.1 = bitcast i8* %.12 to [120 x [1024 x double]]*
  %.23 = call i8* @malloc(i64 960)
  %s4_pooling_layer2_copy.2 = bitcast i8* %.23 to [120 x double]*
  %.34 = call i8* @malloc(i64 960)
  %s4_pooling_layer2_copy.3 = bitcast i8* %.34 to [120 x double]*
  %.45 = call i8* @malloc(i64 384000)
  %s4_pooling_layer2_copy.4 = bitcast i8* %.45 to [1920 x [25 x double]]*
  %.56 = call i8* @malloc(i64 384000)
  %s4_pooling_layer2_copy.5 = bitcast i8* %.56 to [1920 x [25 x double]]*
  %.67 = call i8* @malloc(i64 8192)
  %s4_pooling_layer2_copy.6 = bitcast i8* %.67 to [1024 x double]*
  call fastcc void @copy_in(%struct._Layer1* nonnull %c3_conv_layer1, i32* nonnull align 512 %c3_conv_layer1_copy.0, i32* nonnull align 512 %c3_conv_layer1_copy.1, i32* nonnull align 512 %c3_conv_layer1_copy.2, i32* nonnull align 512 %c3_conv_layer1_copy.3, i32* nonnull align 512 %c3_conv_layer1_copy.4, i32* nonnull align 512 %c3_conv_layer1_copy.5, %struct._Layer2* nonnull %c3_conv_layer2, [120 x [1024 x double]]* %c3_conv_layer2_copy.0, [120 x [1024 x double]]* %c3_conv_layer2_copy.1, [120 x double]* %c3_conv_layer2_copy.2, [120 x double]* %c3_conv_layer2_copy.3, [1920 x [25 x double]]* %c3_conv_layer2_copy.4, [1920 x [25 x double]]* %c3_conv_layer2_copy.5, [1024 x double]* %c3_conv_layer2_copy.6, %struct._Layer1* nonnull %s4_pooling_layer1, i32* nonnull align 512 %s4_pooling_layer1_copy.0, i32* nonnull align 512 %s4_pooling_layer1_copy.1, i32* nonnull align 512 %s4_pooling_layer1_copy.2, i32* nonnull align 512 %s4_pooling_layer1_copy.3, i32* nonnull align 512 %s4_pooling_layer1_copy.4, i32* nonnull align 512 %s4_pooling_layer1_copy.5, %struct._Layer2* nonnull %s4_pooling_layer2, [120 x [1024 x double]]* %s4_pooling_layer2_copy.0, [120 x [1024 x double]]* %s4_pooling_layer2_copy.1, [120 x double]* %s4_pooling_layer2_copy.2, [120 x double]* %s4_pooling_layer2_copy.3, [1920 x [25 x double]]* %s4_pooling_layer2_copy.4, [1920 x [25 x double]]* %s4_pooling_layer2_copy.5, [1024 x double]* %s4_pooling_layer2_copy.6)
  call void @apatb_max_pooling_fprop2_hw(i8 %ap_core, i8 %ap_part, i8 %ap_parent, i32* %c3_conv_layer1_copy.0, i32* %c3_conv_layer1_copy.1, i32* %c3_conv_layer1_copy.2, i32* %c3_conv_layer1_copy.3, i32* %c3_conv_layer1_copy.4, i32* %c3_conv_layer1_copy.5, [120 x [1024 x double]]* %c3_conv_layer2_copy.0, [120 x [1024 x double]]* %c3_conv_layer2_copy.1, [120 x double]* %c3_conv_layer2_copy.2, [120 x double]* %c3_conv_layer2_copy.3, [1920 x [25 x double]]* %c3_conv_layer2_copy.4, [1920 x [25 x double]]* %c3_conv_layer2_copy.5, [1024 x double]* %c3_conv_layer2_copy.6, i32* %s4_pooling_layer1_copy.0, i32* %s4_pooling_layer1_copy.1, i32* %s4_pooling_layer1_copy.2, i32* %s4_pooling_layer1_copy.3, i32* %s4_pooling_layer1_copy.4, i32* %s4_pooling_layer1_copy.5, [120 x [1024 x double]]* %s4_pooling_layer2_copy.0, [120 x [1024 x double]]* %s4_pooling_layer2_copy.1, [120 x double]* %s4_pooling_layer2_copy.2, [120 x double]* %s4_pooling_layer2_copy.3, [1920 x [25 x double]]* %s4_pooling_layer2_copy.4, [1920 x [25 x double]]* %s4_pooling_layer2_copy.5, [1024 x double]* %s4_pooling_layer2_copy.6)
  call void @copy_back(%struct._Layer1* %c3_conv_layer1, i32* %c3_conv_layer1_copy.0, i32* %c3_conv_layer1_copy.1, i32* %c3_conv_layer1_copy.2, i32* %c3_conv_layer1_copy.3, i32* %c3_conv_layer1_copy.4, i32* %c3_conv_layer1_copy.5, %struct._Layer2* %c3_conv_layer2, [120 x [1024 x double]]* %c3_conv_layer2_copy.0, [120 x [1024 x double]]* %c3_conv_layer2_copy.1, [120 x double]* %c3_conv_layer2_copy.2, [120 x double]* %c3_conv_layer2_copy.3, [1920 x [25 x double]]* %c3_conv_layer2_copy.4, [1920 x [25 x double]]* %c3_conv_layer2_copy.5, [1024 x double]* %c3_conv_layer2_copy.6, %struct._Layer1* %s4_pooling_layer1, i32* %s4_pooling_layer1_copy.0, i32* %s4_pooling_layer1_copy.1, i32* %s4_pooling_layer1_copy.2, i32* %s4_pooling_layer1_copy.3, i32* %s4_pooling_layer1_copy.4, i32* %s4_pooling_layer1_copy.5, %struct._Layer2* %s4_pooling_layer2, [120 x [1024 x double]]* %s4_pooling_layer2_copy.0, [120 x [1024 x double]]* %s4_pooling_layer2_copy.1, [120 x double]* %s4_pooling_layer2_copy.2, [120 x double]* %s4_pooling_layer2_copy.3, [1920 x [25 x double]]* %s4_pooling_layer2_copy.4, [1920 x [25 x double]]* %s4_pooling_layer2_copy.5, [1024 x double]* %s4_pooling_layer2_copy.6)
  call void @free(i8* %.0)
  call void @free(i8* %.1)
  call void @free(i8* %.2)
  call void @free(i8* %.3)
  call void @free(i8* %.4)
  call void @free(i8* %.5)
  call void @free(i8* %.6)
  call void @free(i8* %.01)
  call void @free(i8* %.12)
  call void @free(i8* %.23)
  call void @free(i8* %.34)
  call void @free(i8* %.45)
  call void @free(i8* %.56)
  call void @free(i8* %.67)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%struct._Layer1* readonly "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0" %.0, i32* noalias nocapture align 512 "unpacked"="1.1" %.1, i32* noalias nocapture align 512 "unpacked"="1.2" %.2, i32* noalias nocapture align 512 "unpacked"="1.3" %.3, i32* noalias nocapture align 512 "unpacked"="1.4" %.4, i32* noalias nocapture align 512 "unpacked"="1.5" %.5, %struct._Layer2* readonly "unpacked"="2", [120 x [1024 x double]]* "unpacked"="3.0" %.01, [120 x [1024 x double]]* "unpacked"="3.1" %.12, [120 x double]* "unpacked"="3.2" %.23, [120 x double]* "unpacked"="3.3" %.34, [1920 x [25 x double]]* "unpacked"="3.4" %.45, [1920 x [25 x double]]* "unpacked"="3.5" %.56, [1024 x double]* "unpacked"="3.6" %.6, %struct._Layer1* readonly "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0" %.02, i32* noalias nocapture align 512 "unpacked"="5.1" %.13, i32* noalias nocapture align 512 "unpacked"="5.2" %.24, i32* noalias nocapture align 512 "unpacked"="5.3" %.35, i32* noalias nocapture align 512 "unpacked"="5.4" %.46, i32* noalias nocapture align 512 "unpacked"="5.5" %.57, %struct._Layer2* readonly "unpacked"="6", [120 x [1024 x double]]* "unpacked"="7.0" %.03, [120 x [1024 x double]]* "unpacked"="7.1" %.14, [120 x double]* "unpacked"="7.2" %.25, [120 x double]* "unpacked"="7.3" %.36, [1920 x [25 x double]]* "unpacked"="7.4" %.47, [1920 x [25 x double]]* "unpacked"="7.5" %.58, [1024 x double]* "unpacked"="7.6" %.69) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct._Layer1(i32* align 512 %.0, i32* align 512 %.1, i32* align 512 %.2, i32* align 512 %.3, i32* align 512 %.4, i32* align 512 %.5, %struct._Layer1* %0)
  call fastcc void @onebyonecpy_hls.p0struct._Layer2.13([120 x [1024 x double]]* %.01, [120 x [1024 x double]]* %.12, [120 x double]* %.23, [120 x double]* %.34, [1920 x [25 x double]]* %.45, [1920 x [25 x double]]* %.56, [1024 x double]* %.6, %struct._Layer2* %1)
  call fastcc void @onebyonecpy_hls.p0struct._Layer1(i32* align 512 %.02, i32* align 512 %.13, i32* align 512 %.24, i32* align 512 %.35, i32* align 512 %.46, i32* align 512 %.57, %struct._Layer1* %2)
  call fastcc void @onebyonecpy_hls.p0struct._Layer2.13([120 x [1024 x double]]* %.03, [120 x [1024 x double]]* %.14, [120 x double]* %.25, [120 x double]* %.36, [1920 x [25 x double]]* %.47, [1920 x [25 x double]]* %.58, [1024 x double]* %.69, %struct._Layer2* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a120a1024f64([120 x [1024 x double]]* %dst, [120 x [1024 x double]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [120 x [1024 x double]]* %src, null
  %1 = icmp eq [120 x [1024 x double]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [120 x [1024 x double]], [120 x [1024 x double]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [120 x [1024 x double]], [120 x [1024 x double]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.addr, [1024 x double]* %src.addr, i64 1024)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
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
define void @arraycpy_hls.p0a120f64([120 x double]* %dst, [120 x double]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [120 x double]* %src, null
  %1 = icmp eq [120 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [120 x double], [120 x double]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [120 x double], [120 x double]* %src, i64 0, i64 %for.loop.idx2
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
define void @arraycpy_hls.p0a1920a25f64([1920 x [25 x double]]* %dst, [1920 x [25 x double]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1920 x [25 x double]]* %src, null
  %1 = icmp eq [1920 x [25 x double]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1920 x [25 x double]], [1920 x [25 x double]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1920 x [25 x double]], [1920 x [25 x double]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a25f64([25 x double]* %dst.addr, [25 x double]* %src.addr, i64 25)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
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
define internal fastcc void @copy_out(%struct._Layer1* "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, i32* noalias nocapture readonly align 512 "unpacked"="1.2" %.2, i32* noalias nocapture readonly align 512 "unpacked"="1.3" %.3, i32* noalias nocapture readonly align 512 "unpacked"="1.4" %.4, i32* noalias nocapture readonly align 512 "unpacked"="1.5" %.5, %struct._Layer2* "unpacked"="2", [120 x [1024 x double]]* readonly "unpacked"="3.0" %.01, [120 x [1024 x double]]* readonly "unpacked"="3.1" %.12, [120 x double]* readonly "unpacked"="3.2" %.23, [120 x double]* readonly "unpacked"="3.3" %.34, [1920 x [25 x double]]* readonly "unpacked"="3.4" %.45, [1920 x [25 x double]]* readonly "unpacked"="3.5" %.56, [1024 x double]* readonly "unpacked"="3.6" %.6, %struct._Layer1* "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0" %.02, i32* noalias nocapture readonly align 512 "unpacked"="5.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="5.2" %.24, i32* noalias nocapture readonly align 512 "unpacked"="5.3" %.35, i32* noalias nocapture readonly align 512 "unpacked"="5.4" %.46, i32* noalias nocapture readonly align 512 "unpacked"="5.5" %.57, %struct._Layer2* "unpacked"="6", [120 x [1024 x double]]* readonly "unpacked"="7.0" %.03, [120 x [1024 x double]]* readonly "unpacked"="7.1" %.14, [120 x double]* readonly "unpacked"="7.2" %.25, [120 x double]* readonly "unpacked"="7.3" %.36, [1920 x [25 x double]]* readonly "unpacked"="7.4" %.47, [1920 x [25 x double]]* readonly "unpacked"="7.5" %.58, [1024 x double]* readonly "unpacked"="7.6" %.69) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct._Layer1.4(%struct._Layer1* %0, i32* align 512 %.0, i32* align 512 %.1, i32* align 512 %.2, i32* align 512 %.3, i32* align 512 %.4, i32* align 512 %.5)
  call fastcc void @onebyonecpy_hls.p0struct._Layer2(%struct._Layer2* %1, [120 x [1024 x double]]* %.01, [120 x [1024 x double]]* %.12, [120 x double]* %.23, [120 x double]* %.34, [1920 x [25 x double]]* %.45, [1920 x [25 x double]]* %.56, [1024 x double]* %.6)
  call fastcc void @onebyonecpy_hls.p0struct._Layer1.4(%struct._Layer1* %2, i32* align 512 %.02, i32* align 512 %.13, i32* align 512 %.24, i32* align 512 %.35, i32* align 512 %.46, i32* align 512 %.57)
  call fastcc void @onebyonecpy_hls.p0struct._Layer2(%struct._Layer2* %3, [120 x [1024 x double]]* %.03, [120 x [1024 x double]]* %.14, [120 x double]* %.25, [120 x double]* %.36, [1920 x [25 x double]]* %.47, [1920 x [25 x double]]* %.58, [1024 x double]* %.69)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct._Layer1.4(%struct._Layer1* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src.01, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %src.12, i32* noalias nocapture readonly align 512 "unpacked"="1.2" %src.23, i32* noalias nocapture readonly align 512 "unpacked"="1.3" %src.34, i32* noalias nocapture readonly align 512 "unpacked"="1.4" %src.45, i32* noalias nocapture readonly align 512 "unpacked"="1.5" %src.56) unnamed_addr #4 {
entry:
  %0 = icmp eq %struct._Layer1* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %struct._Layer1, %struct._Layer1* %dst, i64 0, i32 0
  %1 = load i32, i32* %src.01, align 512
  store i32 %1, i32* %dst.0, align 4
  %dst.1 = getelementptr %struct._Layer1, %struct._Layer1* %dst, i64 0, i32 1
  %2 = load i32, i32* %src.12, align 512
  store i32 %2, i32* %dst.1, align 4
  %dst.2 = getelementptr %struct._Layer1, %struct._Layer1* %dst, i64 0, i32 2
  %3 = load i32, i32* %src.23, align 512
  store i32 %3, i32* %dst.2, align 4
  %dst.3 = getelementptr %struct._Layer1, %struct._Layer1* %dst, i64 0, i32 3
  %4 = load i32, i32* %src.34, align 512
  store i32 %4, i32* %dst.3, align 4
  %dst.4 = getelementptr %struct._Layer1, %struct._Layer1* %dst, i64 0, i32 4
  %5 = load i32, i32* %src.45, align 512
  store i32 %5, i32* %dst.4, align 4
  %dst.5 = getelementptr %struct._Layer1, %struct._Layer1* %dst, i64 0, i32 5
  %6 = load i32, i32* %src.56, align 512
  store i32 %6, i32* %dst.5, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct._Layer1(i32* noalias nocapture align 512 "unpacked"="0.0" %dst.01, i32* noalias nocapture align 512 "unpacked"="0.1" %dst.12, i32* noalias nocapture align 512 "unpacked"="0.2" %dst.23, i32* noalias nocapture align 512 "unpacked"="0.3" %dst.34, i32* noalias nocapture align 512 "unpacked"="0.4" %dst.45, i32* noalias nocapture align 512 "unpacked"="0.5" %dst.56, %struct._Layer1* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %struct._Layer1* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %struct._Layer1, %struct._Layer1* %src, i64 0, i32 0
  %1 = load i32, i32* %src.0, align 4
  store i32 %1, i32* %dst.01, align 512
  %src.1 = getelementptr %struct._Layer1, %struct._Layer1* %src, i64 0, i32 1
  %2 = load i32, i32* %src.1, align 4
  store i32 %2, i32* %dst.12, align 512
  %src.2 = getelementptr %struct._Layer1, %struct._Layer1* %src, i64 0, i32 2
  %3 = load i32, i32* %src.2, align 4
  store i32 %3, i32* %dst.23, align 512
  %src.3 = getelementptr %struct._Layer1, %struct._Layer1* %src, i64 0, i32 3
  %4 = load i32, i32* %src.3, align 4
  store i32 %4, i32* %dst.34, align 512
  %src.4 = getelementptr %struct._Layer1, %struct._Layer1* %src, i64 0, i32 4
  %5 = load i32, i32* %src.4, align 4
  store i32 %5, i32* %dst.45, align 512
  %src.5 = getelementptr %struct._Layer1, %struct._Layer1* %src, i64 0, i32 5
  %6 = load i32, i32* %src.5, align 4
  store i32 %6, i32* %dst.56, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct._Layer2.13([120 x [1024 x double]]* "unpacked"="0.0" %dst.01, [120 x [1024 x double]]* "unpacked"="0.1" %dst.12, [120 x double]* "unpacked"="0.2" %dst.23, [120 x double]* "unpacked"="0.3" %dst.34, [1920 x [25 x double]]* "unpacked"="0.4" %dst.45, [1920 x [25 x double]]* "unpacked"="0.5" %dst.56, [1024 x double]* "unpacked"="0.6" %dst.67, %struct._Layer2* readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %struct._Layer2* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %struct._Layer2, %struct._Layer2* %src, i64 0, i32 0
  call void @arraycpy_hls.p0a120a1024f64([120 x [1024 x double]]* %dst.01, [120 x [1024 x double]]* %src.0, i64 120)
  %src.1 = getelementptr %struct._Layer2, %struct._Layer2* %src, i64 0, i32 1
  call void @arraycpy_hls.p0a120a1024f64([120 x [1024 x double]]* %dst.12, [120 x [1024 x double]]* %src.1, i64 120)
  %src.2 = getelementptr %struct._Layer2, %struct._Layer2* %src, i64 0, i32 2
  call void @arraycpy_hls.p0a120f64([120 x double]* %dst.23, [120 x double]* %src.2, i64 120)
  %src.3 = getelementptr %struct._Layer2, %struct._Layer2* %src, i64 0, i32 3
  call void @arraycpy_hls.p0a120f64([120 x double]* %dst.34, [120 x double]* %src.3, i64 120)
  %src.4 = getelementptr %struct._Layer2, %struct._Layer2* %src, i64 0, i32 4
  call void @arraycpy_hls.p0a1920a25f64([1920 x [25 x double]]* %dst.45, [1920 x [25 x double]]* %src.4, i64 1920)
  %src.5 = getelementptr %struct._Layer2, %struct._Layer2* %src, i64 0, i32 5
  call void @arraycpy_hls.p0a1920a25f64([1920 x [25 x double]]* %dst.56, [1920 x [25 x double]]* %src.5, i64 1920)
  %src.6 = getelementptr %struct._Layer2, %struct._Layer2* %src, i64 0, i32 6
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.67, [1024 x double]* %src.6, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct._Layer2(%struct._Layer2* "unpacked"="0" %dst, [120 x [1024 x double]]* readonly "unpacked"="1.0" %src.01, [120 x [1024 x double]]* readonly "unpacked"="1.1" %src.12, [120 x double]* readonly "unpacked"="1.2" %src.23, [120 x double]* readonly "unpacked"="1.3" %src.34, [1920 x [25 x double]]* readonly "unpacked"="1.4" %src.45, [1920 x [25 x double]]* readonly "unpacked"="1.5" %src.56, [1024 x double]* readonly "unpacked"="1.6" %src.67) unnamed_addr #4 {
entry:
  %0 = icmp eq %struct._Layer2* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %struct._Layer2, %struct._Layer2* %dst, i64 0, i32 0
  call void @arraycpy_hls.p0a120a1024f64([120 x [1024 x double]]* %dst.0, [120 x [1024 x double]]* %src.01, i64 120)
  %dst.1 = getelementptr %struct._Layer2, %struct._Layer2* %dst, i64 0, i32 1
  call void @arraycpy_hls.p0a120a1024f64([120 x [1024 x double]]* %dst.1, [120 x [1024 x double]]* %src.12, i64 120)
  %dst.2 = getelementptr %struct._Layer2, %struct._Layer2* %dst, i64 0, i32 2
  call void @arraycpy_hls.p0a120f64([120 x double]* %dst.2, [120 x double]* %src.23, i64 120)
  %dst.3 = getelementptr %struct._Layer2, %struct._Layer2* %dst, i64 0, i32 3
  call void @arraycpy_hls.p0a120f64([120 x double]* %dst.3, [120 x double]* %src.34, i64 120)
  %dst.4 = getelementptr %struct._Layer2, %struct._Layer2* %dst, i64 0, i32 4
  call void @arraycpy_hls.p0a1920a25f64([1920 x [25 x double]]* %dst.4, [1920 x [25 x double]]* %src.45, i64 1920)
  %dst.5 = getelementptr %struct._Layer2, %struct._Layer2* %dst, i64 0, i32 5
  call void @arraycpy_hls.p0a1920a25f64([1920 x [25 x double]]* %dst.5, [1920 x [25 x double]]* %src.56, i64 1920)
  %dst.6 = getelementptr %struct._Layer2, %struct._Layer2* %dst, i64 0, i32 6
  call void @arraycpy_hls.p0a1024f64([1024 x double]* %dst.6, [1024 x double]* %src.67, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_max_pooling_fprop2_hw(i8, i8, i8, i32*, i32*, i32*, i32*, i32*, i32*, [120 x [1024 x double]]*, [120 x [1024 x double]]*, [120 x double]*, [120 x double]*, [1920 x [25 x double]]*, [1920 x [25 x double]]*, [1024 x double]*, i32*, i32*, i32*, i32*, i32*, i32*, [120 x [1024 x double]]*, [120 x [1024 x double]]*, [120 x double]*, [120 x double]*, [1920 x [25 x double]]*, [1920 x [25 x double]]*, [1024 x double]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%struct._Layer1* "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, i32* noalias nocapture readonly align 512 "unpacked"="1.2" %.2, i32* noalias nocapture readonly align 512 "unpacked"="1.3" %.3, i32* noalias nocapture readonly align 512 "unpacked"="1.4" %.4, i32* noalias nocapture readonly align 512 "unpacked"="1.5" %.5, %struct._Layer2* "unpacked"="2", [120 x [1024 x double]]* readonly "unpacked"="3.0" %.01, [120 x [1024 x double]]* readonly "unpacked"="3.1" %.12, [120 x double]* readonly "unpacked"="3.2" %.23, [120 x double]* readonly "unpacked"="3.3" %.34, [1920 x [25 x double]]* readonly "unpacked"="3.4" %.45, [1920 x [25 x double]]* readonly "unpacked"="3.5" %.56, [1024 x double]* readonly "unpacked"="3.6" %.6, %struct._Layer1* "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0" %.02, i32* noalias nocapture readonly align 512 "unpacked"="5.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="5.2" %.24, i32* noalias nocapture readonly align 512 "unpacked"="5.3" %.35, i32* noalias nocapture readonly align 512 "unpacked"="5.4" %.46, i32* noalias nocapture readonly align 512 "unpacked"="5.5" %.57, %struct._Layer2* "unpacked"="6", [120 x [1024 x double]]* readonly "unpacked"="7.0" %.03, [120 x [1024 x double]]* readonly "unpacked"="7.1" %.14, [120 x double]* readonly "unpacked"="7.2" %.25, [120 x double]* readonly "unpacked"="7.3" %.36, [1920 x [25 x double]]* readonly "unpacked"="7.4" %.47, [1920 x [25 x double]]* readonly "unpacked"="7.5" %.58, [1024 x double]* readonly "unpacked"="7.6" %.69) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct._Layer2(%struct._Layer2* %3, [120 x [1024 x double]]* %.03, [120 x [1024 x double]]* %.14, [120 x double]* %.25, [120 x double]* %.36, [1920 x [25 x double]]* %.47, [1920 x [25 x double]]* %.58, [1024 x double]* %.69)
  ret void
}

declare void @max_pooling_fprop2_hw_stub(i8 zeroext, i8 zeroext, i8 zeroext, %struct._Layer1* noalias nocapture nonnull readonly, %struct._Layer2* noalias nocapture nonnull readonly, %struct._Layer1* noalias nocapture nonnull readonly, %struct._Layer2* noalias nocapture nonnull)

define void @max_pooling_fprop2_hw_stub_wrapper(i8, i8, i8, i32*, i32*, i32*, i32*, i32*, i32*, [120 x [1024 x double]]*, [120 x [1024 x double]]*, [120 x double]*, [120 x double]*, [1920 x [25 x double]]*, [1920 x [25 x double]]*, [1024 x double]*, i32*, i32*, i32*, i32*, i32*, i32*, [120 x [1024 x double]]*, [120 x [1024 x double]]*, [120 x double]*, [120 x double]*, [1920 x [25 x double]]*, [1920 x [25 x double]]*, [1024 x double]*) #5 {
entry:
  %29 = call i8* @malloc(i64 24)
  %30 = bitcast i8* %29 to %struct._Layer1*
  %31 = call i8* @malloc(i64 2744192)
  %32 = bitcast i8* %31 to %struct._Layer2*
  %33 = call i8* @malloc(i64 24)
  %34 = bitcast i8* %33 to %struct._Layer1*
  %35 = call i8* @malloc(i64 2744192)
  %36 = bitcast i8* %35 to %struct._Layer2*
  call void @copy_out(%struct._Layer1* %30, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, %struct._Layer2* %32, [120 x [1024 x double]]* %9, [120 x [1024 x double]]* %10, [120 x double]* %11, [120 x double]* %12, [1920 x [25 x double]]* %13, [1920 x [25 x double]]* %14, [1024 x double]* %15, %struct._Layer1* %34, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, %struct._Layer2* %36, [120 x [1024 x double]]* %22, [120 x [1024 x double]]* %23, [120 x double]* %24, [120 x double]* %25, [1920 x [25 x double]]* %26, [1920 x [25 x double]]* %27, [1024 x double]* %28)
  call void @max_pooling_fprop2_hw_stub(i8 %0, i8 %1, i8 %2, %struct._Layer1* %30, %struct._Layer2* %32, %struct._Layer1* %34, %struct._Layer2* %36)
  call void @copy_in(%struct._Layer1* %30, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, %struct._Layer2* %32, [120 x [1024 x double]]* %9, [120 x [1024 x double]]* %10, [120 x double]* %11, [120 x double]* %12, [1920 x [25 x double]]* %13, [1920 x [25 x double]]* %14, [1024 x double]* %15, %struct._Layer1* %34, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, %struct._Layer2* %36, [120 x [1024 x double]]* %22, [120 x [1024 x double]]* %23, [120 x double]* %24, [120 x double]* %25, [1920 x [25 x double]]* %26, [1920 x [25 x double]]* %27, [1024 x double]* %28)
  call void @free(i8* %29)
  call void @free(i8* %31)
  call void @free(i8* %33)
  call void @free(i8* %35)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
