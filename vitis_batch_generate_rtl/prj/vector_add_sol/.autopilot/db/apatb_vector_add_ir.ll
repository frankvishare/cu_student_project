; ModuleID = '/home/duludulu/Documents/vishare_tools/vitis_batch_generate_rtl/prj/vector_add_sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.vector_2d = type { i32, i32 }

; Function Attrs: argmemonly inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_vector_add_ir(i8 zeroext %ap_core, i8 zeroext %ap_part, i8 zeroext %ap_parent, %struct.vector_2d* noalias nocapture nonnull %vec_d1, %struct.vector_2d* noalias nocapture nonnull readonly %vec_s1, %struct.vector_2d* noalias nocapture nonnull readonly %vec_s2) local_unnamed_addr #0 {
entry:
  %vec_d1_copy.0 = alloca i32, align 512
  %vec_d1_copy.1 = alloca i32, align 512
  %vec_s1_copy.0 = alloca i32, align 512
  %vec_s1_copy.1 = alloca i32, align 512
  %vec_s2_copy.0 = alloca i32, align 512
  %vec_s2_copy.1 = alloca i32, align 512
  call fastcc void @copy_in(%struct.vector_2d* nonnull %vec_d1, i32* nonnull align 512 %vec_d1_copy.0, i32* nonnull align 512 %vec_d1_copy.1, %struct.vector_2d* nonnull %vec_s1, i32* nonnull align 512 %vec_s1_copy.0, i32* nonnull align 512 %vec_s1_copy.1, %struct.vector_2d* nonnull %vec_s2, i32* nonnull align 512 %vec_s2_copy.0, i32* nonnull align 512 %vec_s2_copy.1)
  call void @apatb_vector_add_hw(i8 %ap_core, i8 %ap_part, i8 %ap_parent, i32* %vec_d1_copy.0, i32* %vec_d1_copy.1, i32* %vec_s1_copy.0, i32* %vec_s1_copy.1, i32* %vec_s2_copy.0, i32* %vec_s2_copy.1)
  call void @copy_back(%struct.vector_2d* %vec_d1, i32* %vec_d1_copy.0, i32* %vec_d1_copy.1, %struct.vector_2d* %vec_s1, i32* %vec_s1_copy.0, i32* %vec_s1_copy.1, %struct.vector_2d* %vec_s2, i32* %vec_s2_copy.0, i32* %vec_s2_copy.1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%struct.vector_2d* noalias readonly "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0" %.0, i32* noalias nocapture align 512 "unpacked"="1.1" %.1, %struct.vector_2d* noalias readonly "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0" %.01, i32* noalias nocapture align 512 "unpacked"="3.1" %.12, %struct.vector_2d* noalias readonly "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0" %.013, i32* noalias nocapture align 512 "unpacked"="5.1" %.124) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.vector_2d(i32* align 512 %.0, i32* align 512 %.1, %struct.vector_2d* %0)
  call fastcc void @onebyonecpy_hls.p0struct.vector_2d(i32* align 512 %.01, i32* align 512 %.12, %struct.vector_2d* %1)
  call fastcc void @onebyonecpy_hls.p0struct.vector_2d(i32* align 512 %.013, i32* align 512 %.124, %struct.vector_2d* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%struct.vector_2d* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, %struct.vector_2d* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0" %.01, i32* noalias nocapture readonly align 512 "unpacked"="3.1" %.12, %struct.vector_2d* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0" %.013, i32* noalias nocapture readonly align 512 "unpacked"="5.1" %.124) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.vector_2d.4(%struct.vector_2d* %0, i32* align 512 %.0, i32* align 512 %.1)
  call fastcc void @onebyonecpy_hls.p0struct.vector_2d.4(%struct.vector_2d* %1, i32* align 512 %.01, i32* align 512 %.12)
  call fastcc void @onebyonecpy_hls.p0struct.vector_2d.4(%struct.vector_2d* %2, i32* align 512 %.013, i32* align 512 %.124)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct.vector_2d.4(%struct.vector_2d* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src.01, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %src.12) unnamed_addr #3 {
entry:
  %0 = icmp eq %struct.vector_2d* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %struct.vector_2d, %struct.vector_2d* %dst, i64 0, i32 0
  %1 = load i32, i32* %src.01, align 512
  store i32 %1, i32* %dst.0, align 4
  %dst.1 = getelementptr %struct.vector_2d, %struct.vector_2d* %dst, i64 0, i32 1
  %2 = load i32, i32* %src.12, align 512
  store i32 %2, i32* %dst.1, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct.vector_2d(i32* noalias nocapture align 512 "unpacked"="0.0" %dst.01, i32* noalias nocapture align 512 "unpacked"="0.1" %dst.12, %struct.vector_2d* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %struct.vector_2d* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %struct.vector_2d, %struct.vector_2d* %src, i64 0, i32 0
  %1 = load i32, i32* %src.0, align 4
  store i32 %1, i32* %dst.01, align 512
  %src.1 = getelementptr %struct.vector_2d, %struct.vector_2d* %src, i64 0, i32 1
  %2 = load i32, i32* %src.1, align 4
  store i32 %2, i32* %dst.12, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_vector_add_hw(i8, i8, i8, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%struct.vector_2d* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, %struct.vector_2d* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0" %.01, i32* noalias nocapture readonly align 512 "unpacked"="3.1" %.12, %struct.vector_2d* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0" %.013, i32* noalias nocapture readonly align 512 "unpacked"="5.1" %.124) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.vector_2d.4(%struct.vector_2d* %0, i32* align 512 %.0, i32* align 512 %.1)
  ret void
}

declare void @vector_add_hw_stub(i8 zeroext, i8 zeroext, i8 zeroext, %struct.vector_2d* noalias nocapture nonnull, %struct.vector_2d* noalias nocapture nonnull readonly, %struct.vector_2d* noalias nocapture nonnull readonly)

define void @vector_add_hw_stub_wrapper(i8, i8, i8, i32*, i32*, i32*, i32*, i32*, i32*) #4 {
entry:
  %9 = call i8* @malloc(i64 8)
  %10 = bitcast i8* %9 to %struct.vector_2d*
  %11 = call i8* @malloc(i64 8)
  %12 = bitcast i8* %11 to %struct.vector_2d*
  %13 = call i8* @malloc(i64 8)
  %14 = bitcast i8* %13 to %struct.vector_2d*
  call void @copy_out(%struct.vector_2d* %10, i32* %3, i32* %4, %struct.vector_2d* %12, i32* %5, i32* %6, %struct.vector_2d* %14, i32* %7, i32* %8)
  call void @vector_add_hw_stub(i8 %0, i8 %1, i8 %2, %struct.vector_2d* %10, %struct.vector_2d* %12, %struct.vector_2d* %14)
  call void @copy_in(%struct.vector_2d* %10, i32* %3, i32* %4, %struct.vector_2d* %12, i32* %5, i32* %6, %struct.vector_2d* %14, i32* %7, i32* %8)
  call void @free(i8* %9)
  call void @free(i8* %11)
  call void @free(i8* %13)
  ret void
}

attributes #0 = { argmemonly inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
