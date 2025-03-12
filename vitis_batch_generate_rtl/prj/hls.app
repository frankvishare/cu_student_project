<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="prj" ideType="classic" top="fully_connected_fprop">
    <files>
        <file name="../source/hls.cpp" sc="0" tb="false" cflags="-DTBCONFIG_FULLY_CONNECTED_FPROP -DXMEM_ARRAY_LATENCY_3=1" csimflags="" blackbox="false"/>
        <file name="/home/duludulu/Documents/hls/source/hls_tb.cpp" sc="0" tb="1" cflags="-DTBCONFIG_FULLY_CONNECTED_FPROP -DXMEM_ARRAY_LATENCY_3=1 -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="fully_connected_fprop_sol" status=""/>
    </solutions>
</AutoPilot:project>

