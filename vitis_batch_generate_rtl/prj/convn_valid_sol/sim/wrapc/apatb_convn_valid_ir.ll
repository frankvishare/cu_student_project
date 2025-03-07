; ModuleID = '/home/duludulu/Documents/hls/vitis_batch_generate_rtl/prj/convn_valid_sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_convn_valid_ir(i8 zeroext %ap_core, i8 zeroext %ap_part, i8 zeroext %ap_parent, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %in_data, i32 %in_w, i32 %in_h, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="25" %kernel, i32 %kernel_w, i32 %kernel_h, double* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %out_data, i32 %out_w, i32 %out_h) local_unnamed_addr #0 {
entry:
  %0 = bitcast double* %in_data to [1024 x double]*
  %1 = call i8* @malloc(i64 8192)
  %in_data_copy = bitcast i8* %1 to [1024 x double]*
  %2 = bitcast double* %kernel to [25 x double]*
  %kernel_copy = alloca [25 x double], align 512
  %3 = bitcast double* %out_data to [1024 x double]*
  %4 = call i8* @malloc(i64 8192)
  %out_data_copy = bitcast i8* %4 to [1024 x double]*
  call fastcc void @copy_in([1024 x double]* nonnull %0, [1024 x double]* %in_data_copy, [25 x double]* nonnull %2, [25 x double]* nonnull align 512 %kernel_copy, [1024 x double]* nonnull %3, [1024 x double]* %out_data_copy)
  call void @apatb_convn_valid_hw(i8 %ap_core, i8 %ap_part, i8 %ap_parent, [1024 x double]* %in_data_copy, i32 %in_w, i32 %in_h, [25 x double]* %kernel_copy, i32 %kernel_w, i32 %kernel_h, [1024 x double]* %out_data_copy, i32 %out_w, i32 %out_h)
  call void @copy_back([1024 x double]* %0, [1024 x double]* %in_data_copy, [25 x double]* %2, [25 x double]* %kernel_copy, [1024 x double]* %3, [1024 x double]* %out_data_copy)
  tail call void @free(i8* %1)
  tail call void @free(i8* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([1024 x double]* readonly, [1024 x double]*, [25 x double]* readonly, [25 x double]* align 512, [1024 x double]* readonly, [1024 x double]*) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %1, [1024 x double]* %0)
  call fastcc void @onebyonecpy_hls.p0a25f64([25 x double]* align 512 %3, [25 x double]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %5, [1024 x double]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %dst, [1024 x double]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x double]* %dst, null
  %1 = icmp eq [1024 x double]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1024f64([1024 x double]* nonnull %dst, [1024 x double]* nonnull %src, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1024f64([1024 x double]* %dst, [1024 x double]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
define internal fastcc void @onebyonecpy_hls.p0a25f64([25 x double]* align 512 %dst, [25 x double]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [25 x double]* %dst, null
  %1 = icmp eq [25 x double]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a25f64([25 x double]* nonnull %dst, [25 x double]* nonnull %src, i64 25)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a25f64([25 x double]* %dst, [25 x double]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
define internal fastcc void @copy_out([1024 x double]*, [1024 x double]* readonly, [25 x double]*, [25 x double]* readonly align 512, [1024 x double]*, [1024 x double]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %0, [1024 x double]* %1)
  call fastcc void @onebyonecpy_hls.p0a25f64([25 x double]* %2, [25 x double]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %4, [1024 x double]* %5)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_convn_valid_hw(i8, i8, i8, [1024 x double]*, i32, i32, [25 x double]*, i32, i32, [1024 x double]*, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([1024 x double]*, [1024 x double]* readonly, [25 x double]*, [25 x double]* readonly align 512, [1024 x double]*, [1024 x double]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f64([1024 x double]* %4, [1024 x double]* %5)
  ret void
}

declare void @convn_valid_hw_stub(i8 zeroext, i8 zeroext, i8 zeroext, double* noalias nocapture nonnull readonly, i32, i32, double* noalias nocapture nonnull readonly, i32, i32, double* noalias nocapture nonnull, i32, i32)

define void @convn_valid_hw_stub_wrapper(i8, i8, i8, [1024 x double]*, i32, i32, [25 x double]*, i32, i32, [1024 x double]*, i32, i32) #5 {
entry:
  call void @copy_out([1024 x double]* null, [1024 x double]* %3, [25 x double]* null, [25 x double]* %6, [1024 x double]* null, [1024 x double]* %9)
  %12 = bitcast [1024 x double]* %3 to double*
  %13 = bitcast [25 x double]* %6 to double*
  %14 = bitcast [1024 x double]* %9 to double*
  call void @convn_valid_hw_stub(i8 %0, i8 %1, i8 %2, double* %12, i32 %4, i32 %5, double* %13, i32 %7, i32 %8, double* %14, i32 %10, i32 %11)
  call void @copy_in([1024 x double]* null, [1024 x double]* %3, [25 x double]* null, [25 x double]* %6, [1024 x double]* null, [1024 x double]* %9)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
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
