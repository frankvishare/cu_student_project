; ModuleID = '/home/duludulu/Documents/vishare_tools/vitis_batch_generate_rtl/prj/hevc_loop_filter_chroma_8bit_hls_sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_hevc_loop_filter_chroma_8bit_hls_ir(i8 zeroext %ap_core, i8 zeroext %ap_part, i8 zeroext %ap_parent, i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="2073600" %pix_base, i32 %frame_offset, i32 %xstride, i32 %ystride, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "partition" %tc_arr, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "partition" %no_p_arr, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "partition" %no_q_arr) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %pix_base to [2073600 x i8]*
  %1 = call i8* @malloc(i64 2073600)
  %pix_base_copy = bitcast i8* %1 to [2073600 x i8]*
  %2 = bitcast i32* %tc_arr to [2 x i32]*
  %tc_arr_copy_0 = alloca i32, align 512
  %tc_arr_copy_1 = alloca i32, align 512
  %3 = bitcast i8* %no_p_arr to [2 x i8]*
  %no_p_arr_copy_0 = alloca i8, align 512
  %no_p_arr_copy_1 = alloca i8, align 512
  %4 = bitcast i8* %no_q_arr to [2 x i8]*
  %no_q_arr_copy_0 = alloca i8, align 512
  %no_q_arr_copy_1 = alloca i8, align 512
  call void @copy_in([2073600 x i8]* nonnull %0, [2073600 x i8]* %pix_base_copy, [2 x i32]* nonnull %2, i32* nonnull align 512 %tc_arr_copy_0, i32* nonnull align 512 %tc_arr_copy_1, [2 x i8]* nonnull %3, i8* nonnull align 512 %no_p_arr_copy_0, i8* nonnull align 512 %no_p_arr_copy_1, [2 x i8]* nonnull %4, i8* nonnull align 512 %no_q_arr_copy_0, i8* nonnull align 512 %no_q_arr_copy_1)
  call void @apatb_hevc_loop_filter_chroma_8bit_hls_hw(i8 %ap_core, i8 %ap_part, i8 %ap_parent, [2073600 x i8]* %pix_base_copy, i32 %frame_offset, i32 %xstride, i32 %ystride, i32* %tc_arr_copy_0, i32* %tc_arr_copy_1, i8* %no_p_arr_copy_0, i8* %no_p_arr_copy_1, i8* %no_q_arr_copy_0, i8* %no_q_arr_copy_1)
  call void @copy_back([2073600 x i8]* %0, [2073600 x i8]* %pix_base_copy, [2 x i32]* %2, i32* %tc_arr_copy_0, i32* %tc_arr_copy_1, [2 x i8]* %3, i8* %no_p_arr_copy_0, i8* %no_p_arr_copy_1, [2 x i8]* %4, i8* %no_q_arr_copy_0, i8* %no_q_arr_copy_1)
  tail call void @free(i8* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a2073600i8([2073600 x i8]* %dst, [2073600 x i8]* readonly %src) unnamed_addr #1 {
entry:
  %0 = icmp eq [2073600 x i8]* %dst, null
  %1 = icmp eq [2073600 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2073600i8([2073600 x i8]* nonnull %dst, [2073600 x i8]* nonnull %src, i64 2073600)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2073600i8([2073600 x i8]* %dst, [2073600 x i8]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [2073600 x i8]* %src, null
  %1 = icmp eq [2073600 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2073600 x i8], [2073600 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2073600 x i8], [2073600 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2i32([2 x i32]* "orig.arg.no"="0" %dst, [2 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [2 x i32]* %src, null
  %1 = icmp eq [2 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2 x i32], [2 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2 x i32], [2 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2i8([2 x i8]* "orig.arg.no"="0" %dst, [2 x i8]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [2 x i8]* %src, null
  %1 = icmp eq [2 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2 x i8], [2 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2 x i8], [2 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2i32.4.5(i32* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i32* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [2 x i32]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [2 x i32]* %src, null
  %1 = icmp eq i32* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [2 x i32], [2 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  store i32 %3, i32* %dst_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %4)
  store i32 %3, i32* %dst_1, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a2i32.3.6(i32* align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i32* align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [2 x i32]* readonly "orig.arg.no"="1" %src) #1 {
entry:
  %0 = icmp eq i32* %dst_0, null
  %1 = icmp eq [2 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2i32.4.5(i32* nonnull %dst_0, i32* %dst_1, [2 x i32]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2i8.8.9(i8* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i8* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [2 x i8]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [2 x i8]* %src, null
  %1 = icmp eq i8* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [2 x i8], [2 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  store i8 %3, i8* %dst_0, align 1
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %4)
  store i8 %3, i8* %dst_1, align 1
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a2i8.7.10(i8* align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i8* align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [2 x i8]* readonly "orig.arg.no"="1" %src) #1 {
entry:
  %0 = icmp eq i8* %dst_0, null
  %1 = icmp eq [2 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2i8.8.9(i8* nonnull %dst_0, i8* %dst_1, [2 x i8]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([2073600 x i8]* readonly "orig.arg.no"="0", [2073600 x i8]* "orig.arg.no"="1", [2 x i32]* readonly "orig.arg.no"="2", i32* align 512 "orig.arg.no"="3" "unpacked"="3.0" %_0, i32* align 512 "orig.arg.no"="3" "unpacked"="3.1" %_1, [2 x i8]* readonly "orig.arg.no"="4", i8* align 512 "orig.arg.no"="5" "unpacked"="5.0" %_01, i8* align 512 "orig.arg.no"="5" "unpacked"="5.1" %_12, [2 x i8]* readonly "orig.arg.no"="6", i8* align 512 "orig.arg.no"="7" "unpacked"="7.0" %_03, i8* align 512 "orig.arg.no"="7" "unpacked"="7.1" %_14) #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2073600i8([2073600 x i8]* %1, [2073600 x i8]* %0)
  call void @onebyonecpy_hls.p0a2i32.3.6(i32* align 512 %_0, i32* align 512 %_1, [2 x i32]* %2)
  call void @onebyonecpy_hls.p0a2i8.7.10(i8* align 512 %_01, i8* align 512 %_12, [2 x i8]* %3)
  call void @onebyonecpy_hls.p0a2i8.7.10(i8* align 512 %_03, i8* align 512 %_14, [2 x i8]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2i32.16.17([2 x i32]* "orig.arg.no"="0" %dst, i32* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq i32* %src_0, null
  %1 = icmp eq [2 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [2 x i32], [2 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load i32, i32* %src_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %3)
  %_1 = load i32, i32* %src_1, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %4 = phi i32 [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ]
  store i32 %4, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a2i32.15.18([2 x i32]* "orig.arg.no"="0" %dst, i32* readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, i32* readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1) #1 {
entry:
  %0 = icmp eq [2 x i32]* %dst, null
  %1 = icmp eq i32* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2i32.16.17([2 x i32]* nonnull %dst, i32* nonnull %src_0, i32* %src_1, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2i8.20.21([2 x i8]* "orig.arg.no"="0" %dst, i8* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i8* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq i8* %src_0, null
  %1 = icmp eq [2 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [2 x i8], [2 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load i8, i8* %src_0, align 1
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %3)
  %_1 = load i8, i8* %src_1, align 1
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %4 = phi i8 [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ]
  store i8 %4, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a2i8.19.22([2 x i8]* "orig.arg.no"="0" %dst, i8* readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, i8* readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1) #1 {
entry:
  %0 = icmp eq [2 x i8]* %dst, null
  %1 = icmp eq i8* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2i8.20.21([2 x i8]* nonnull %dst, i8* nonnull %src_0, i8* %src_1, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([2073600 x i8]* "orig.arg.no"="0", [2073600 x i8]* readonly "orig.arg.no"="1", [2 x i32]* "orig.arg.no"="2", i32* readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_0, i32* readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_1, [2 x i8]* "orig.arg.no"="4", i8* readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_01, i8* readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_12, [2 x i8]* "orig.arg.no"="6", i8* readonly align 512 "orig.arg.no"="7" "unpacked"="7.0" %_03, i8* readonly align 512 "orig.arg.no"="7" "unpacked"="7.1" %_14) #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2073600i8([2073600 x i8]* %0, [2073600 x i8]* %1)
  call void @onebyonecpy_hls.p0a2i32.15.18([2 x i32]* %2, i32* align 512 %_0, i32* align 512 %_1)
  call void @onebyonecpy_hls.p0a2i8.19.22([2 x i8]* %3, i8* align 512 %_01, i8* align 512 %_12)
  call void @onebyonecpy_hls.p0a2i8.19.22([2 x i8]* %4, i8* align 512 %_03, i8* align 512 %_14)
  ret void
}

declare void @apatb_hevc_loop_filter_chroma_8bit_hls_hw(i8, i8, i8, [2073600 x i8]*, i32, i32, i32, i32*, i32*, i8*, i8*, i8*, i8*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([2073600 x i8]* "orig.arg.no"="0", [2073600 x i8]* readonly "orig.arg.no"="1", [2 x i32]* "orig.arg.no"="2", i32* readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_0, i32* readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_1, [2 x i8]* "orig.arg.no"="4", i8* readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_01, i8* readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_12, [2 x i8]* "orig.arg.no"="6", i8* readonly align 512 "orig.arg.no"="7" "unpacked"="7.0" %_03, i8* readonly align 512 "orig.arg.no"="7" "unpacked"="7.1" %_14) #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2073600i8([2073600 x i8]* %0, [2073600 x i8]* %1)
  ret void
}

declare void @hevc_loop_filter_chroma_8bit_hls_hw_stub(i8 zeroext, i8 zeroext, i8 zeroext, i8* noalias nocapture nonnull, i32, i32, i32, i32* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull readonly)

define void @hevc_loop_filter_chroma_8bit_hls_hw_stub_wrapper(i8, i8, i8, [2073600 x i8]*, i32, i32, i32, i32*, i32*, i8*, i8*, i8*, i8*) #6 {
entry:
  %13 = call i8* @malloc(i64 8)
  %14 = bitcast i8* %13 to [2 x i32]*
  %15 = call i8* @malloc(i64 2)
  %16 = bitcast i8* %15 to [2 x i8]*
  %17 = call i8* @malloc(i64 2)
  %18 = bitcast i8* %17 to [2 x i8]*
  call void @copy_out([2073600 x i8]* null, [2073600 x i8]* %3, [2 x i32]* %14, i32* %7, i32* %8, [2 x i8]* %16, i8* %9, i8* %10, [2 x i8]* %18, i8* %11, i8* %12)
  %19 = bitcast [2073600 x i8]* %3 to i8*
  %20 = bitcast [2 x i32]* %14 to i32*
  %21 = bitcast [2 x i8]* %16 to i8*
  %22 = bitcast [2 x i8]* %18 to i8*
  call void @hevc_loop_filter_chroma_8bit_hls_hw_stub(i8 %0, i8 %1, i8 %2, i8* %19, i32 %4, i32 %5, i32 %6, i32* %20, i8* %21, i8* %22)
  call void @copy_in([2073600 x i8]* null, [2073600 x i8]* %3, [2 x i32]* %14, i32* %7, i32* %8, [2 x i8]* %16, i8* %9, i8* %10, [2 x i8]* %18, i8* %11, i8* %12)
  call void @free(i8* %13)
  call void @free(i8* %15)
  call void @free(i8* %17)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { nounwind willreturn }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !13, !19}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"7", [2 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12}
!11 = !{!"7.0", i32* null}
!12 = !{!"7.1", i32* null}
!13 = !{!14, !8, !16}
!14 = !{!15}
!15 = !{!"8", [2 x i8]* null}
!16 = !{!17, !18}
!17 = !{!"8.0", i8* null}
!18 = !{!"8.1", i8* null}
!19 = !{!20, !8, !22}
!20 = !{!21}
!21 = !{!"9", [2 x i8]* null}
!22 = !{!23, !24}
!23 = !{!"9.0", i8* null}
!24 = !{!"9.1", i8* null}
