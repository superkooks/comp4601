; ModuleID = '/home/superkooks/Uni/COMP4601/assign/canny_hls/canny_top/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.RGBPixel = type { i8, i8, i8 }

; Function Attrs: noinline
define void @apatb_canny_top_ir(%struct.RGBPixel* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="262144" %in, i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="262144" %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.RGBPixel* %in to [262144 x %struct.RGBPixel]*
  %1 = call i8* @malloc(i64 786432)
  %in_copy = bitcast i8* %1 to [262144 x %struct.RGBPixel]*
  %2 = bitcast i8* %out to [262144 x i8]*
  %3 = call i8* @malloc(i64 262144)
  %out_copy = bitcast i8* %3 to [262144 x i8]*
  call fastcc void @copy_in([262144 x %struct.RGBPixel]* nonnull %0, [262144 x %struct.RGBPixel]* %in_copy, [262144 x i8]* nonnull %2, [262144 x i8]* %out_copy)
  call void @apatb_canny_top_hw([262144 x %struct.RGBPixel]* %in_copy, [262144 x i8]* %out_copy)
  call void @copy_back([262144 x %struct.RGBPixel]* %0, [262144 x %struct.RGBPixel]* %in_copy, [262144 x i8]* %2, [262144 x i8]* %out_copy)
  tail call void @free(i8* %1)
  tail call void @free(i8* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([262144 x %struct.RGBPixel]* readonly, [262144 x %struct.RGBPixel]*, [262144 x i8]* readonly, [262144 x i8]*) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a262144struct.RGBPixel([262144 x %struct.RGBPixel]* %1, [262144 x %struct.RGBPixel]* %0)
  call fastcc void @onebyonecpy_hls.p0a262144i8([262144 x i8]* %3, [262144 x i8]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a262144struct.RGBPixel([262144 x %struct.RGBPixel]* %dst, [262144 x %struct.RGBPixel]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [262144 x %struct.RGBPixel]* %dst, null
  %1 = icmp eq [262144 x %struct.RGBPixel]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a262144struct.RGBPixel([262144 x %struct.RGBPixel]* nonnull %dst, [262144 x %struct.RGBPixel]* nonnull %src, i64 262144)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a262144struct.RGBPixel([262144 x %struct.RGBPixel]* %dst, [262144 x %struct.RGBPixel]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [262144 x %struct.RGBPixel]* %src, null
  %1 = icmp eq [262144 x %struct.RGBPixel]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [262144 x %struct.RGBPixel], [262144 x %struct.RGBPixel]* %src, i64 0, i64 %for.loop.idx8, i32 0
  %dst.addr.02 = getelementptr [262144 x %struct.RGBPixel], [262144 x %struct.RGBPixel]* %dst, i64 0, i64 %for.loop.idx8, i32 0
  %3 = load i8, i8* %src.addr.01, align 1
  store i8 %3, i8* %dst.addr.02, align 1
  %src.addr.13 = getelementptr [262144 x %struct.RGBPixel], [262144 x %struct.RGBPixel]* %src, i64 0, i64 %for.loop.idx8, i32 1
  %dst.addr.14 = getelementptr [262144 x %struct.RGBPixel], [262144 x %struct.RGBPixel]* %dst, i64 0, i64 %for.loop.idx8, i32 1
  %4 = load i8, i8* %src.addr.13, align 1
  store i8 %4, i8* %dst.addr.14, align 1
  %src.addr.25 = getelementptr [262144 x %struct.RGBPixel], [262144 x %struct.RGBPixel]* %src, i64 0, i64 %for.loop.idx8, i32 2
  %dst.addr.26 = getelementptr [262144 x %struct.RGBPixel], [262144 x %struct.RGBPixel]* %dst, i64 0, i64 %for.loop.idx8, i32 2
  %5 = load i8, i8* %src.addr.25, align 1
  store i8 %5, i8* %dst.addr.26, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a262144i8([262144 x i8]* %dst, [262144 x i8]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [262144 x i8]* %dst, null
  %1 = icmp eq [262144 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a262144i8([262144 x i8]* nonnull %dst, [262144 x i8]* nonnull %src, i64 262144)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a262144i8([262144 x i8]* %dst, [262144 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [262144 x i8]* %src, null
  %1 = icmp eq [262144 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [262144 x i8], [262144 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [262144 x i8], [262144 x i8]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @copy_out([262144 x %struct.RGBPixel]*, [262144 x %struct.RGBPixel]* readonly, [262144 x i8]*, [262144 x i8]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a262144struct.RGBPixel([262144 x %struct.RGBPixel]* %0, [262144 x %struct.RGBPixel]* %1)
  call fastcc void @onebyonecpy_hls.p0a262144i8([262144 x i8]* %2, [262144 x i8]* %3)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_canny_top_hw([262144 x %struct.RGBPixel]*, [262144 x i8]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([262144 x %struct.RGBPixel]*, [262144 x %struct.RGBPixel]* readonly, [262144 x i8]*, [262144 x i8]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a262144i8([262144 x i8]* %2, [262144 x i8]* %3)
  ret void
}

declare void @canny_top_hw_stub(%struct.RGBPixel* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull)

define void @canny_top_hw_stub_wrapper([262144 x %struct.RGBPixel]*, [262144 x i8]*) #5 {
entry:
  call void @copy_out([262144 x %struct.RGBPixel]* null, [262144 x %struct.RGBPixel]* %0, [262144 x i8]* null, [262144 x i8]* %1)
  %2 = bitcast [262144 x %struct.RGBPixel]* %0 to %struct.RGBPixel*
  %3 = bitcast [262144 x i8]* %1 to i8*
  call void @canny_top_hw_stub(%struct.RGBPixel* %2, i8* %3)
  call void @copy_in([262144 x %struct.RGBPixel]* null, [262144 x %struct.RGBPixel]* %0, [262144 x i8]* null, [262144 x i8]* %1)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
