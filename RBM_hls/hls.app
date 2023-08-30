<project xmlns="com.autoesl.autopilot.project" name="RBM_hls" top="RBM">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../code/RBM_testbench.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="RBM_hls/code/RBM.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="RBM_hls/code/RBM.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="RBM_hls/code/sigmoid_parameters.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="RBM_512_128_80M" status="inactive"/>
        <solution name="RBM_512_64_80M" status="active"/>
    </solutions>
</project>

