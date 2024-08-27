CV32E40P cekirdeginin dogrulanmasi asagidaki sekilde yapilmistir:
Oncelikle gerekli riscv toolchainleri linux'ta kurulmustur ve kullanilan repolar tarafindan istenilen pathler .bashrc dosyasinin icinde asagidaki sekilde ayarlanmistir:

```bash
export CV_SW_TOOLCHAIN="/home/kutaybulun/toolchains/riscv"
export CV_SW_PREFIX="riscv32-unknown-elf-"
export CV_SW_MARCH="rv32imc_zicsr"
export CV_SW_CFLAGS="-march=rv32imc_zicsr -mabi=ilp32"
export PATH=$PATH:/home/kutaybulun/toolchains/riscv/bin:/home/kutaybulun/toolchains/riscv/bin/riscv32-unknown-elf/bin:/home/kutaybulun/toolchains/riscv/bin/bin:$HOME/.local/bin
export RISCV="/home/kutaybulun/toolchains/riscv/bin"
export SPIKE_PATH="/home/kutaybulun/toolchains/riscv/bin/bin"
export RISCV_GCC="/home/kutaybulun/toolchains/riscv/bin/riscv32-unknown-elf-gcc"
alias sudo='sudo env PATH=$PATH'
```

Kullanilan repolarin kendi ozelinde nasil kullanildigi asagida bulunabilir.

**core-v-verif** reposu:

Repoda normalde kullanilan UVM ortami testleri commercial toollar tarafindan yapildigi icin bu ortamlar kullanilmamis, onun yerine open source bir simulator olan Verilator kullanilmistir. Verilatori kullandigimiz cekirdege uygun hale getirebilmek icin asagidaki degisiklikler yapilmistir:

```makefile
core-v-verif/cv32e40p/sim/core pathinin icindeki makefile gnu++14 kullanmak icin ve test sonucu waveformlarini dumplamak icin asagidaki ilgili yer bu haline modifiye edilmistir:
    VERILATOR           = verilator
    VERI_FLAGS         += 
    VERI_COMPILE_FLAGS += -Wno-BLKANDNBLK --Wno-fatal $(SV_CMP_FLAGS) # hope this doesn't hurt us in the long run
    VERI_TRACE         ?= --trace
    VERI_OBJ_DIR       ?= cobj_dir
    #VERI_LOG_DIR       ?= cobj_dir/logs
    VERI_LOG_DIR       ?= $(SIM_TEST_PROGRAM_RESULTS)
    VERI_CFLAGS        += -O2 -std=gnu++14 -DVCD_TRACE
```

Daha sonra "hello-world", "riscv_arithmetic_basic_test_0" gibi bazi repoda bulunan custom testler asagidaki sekilde kosturulmustur:
```bash
$ cd /home/kutaybulun/corev/core-v-verif/cv32e40p/sim/core
$ make veri-test TEST=TEST_ADI
```

Kosturulan butun testler dogru sekilde gecmektedir, cv32e40p cekirdegi dogru bir sekilde calismaktadir. Ilgili testlerin sonuclari ve loglari asagidaki pathde bulunabilir:
```
core-v-verif/cv32e40p/sim/core/simulation_results
```

Ayrica istenilirse gktWave kullanilarak "core-v-verif/cv32e40p/sim/core" pathindeki verilator_tb.vcd acilip gozlemlenebilmektedir.

**riscv-dv** reposu:

Ozellikle core-v-verif reposunda da kosturulan "riscv_arithmetic_basic_test_0" testi instruction tracelerini gorebilmek ve coverage alabilmek icin burada da kosturulmustur. Bunun icin asagidaki adimlar izlenmistir:

1. Testleri dogru cekirdek icin uretebilmek icin hedef cekirdek pathi asagidaki sekilde ayarlanmistir:
```
riscv-dv/target/cv32e40p
```
2. riscv-dv reposu da normalde commercial simulatorlar kullanildigi icin bunlarin alternatifi pyflow simulator olarak kullanilmistir. Bunun icin bir pyhton virtual environmenti kurulmustur:
```
$ source venv/bin/activate
```
3. Asagidaki komut ile "riscv_arithmetic_basic_test_0" olusturulmustur:
```
$ python3 run.py --test riscv_arithmetic_basic_test --steps gen --simulator pyflow --gen_timeout=1000 -cs /home/kutaybulun/corev/riscv-dv/target/cv32e40p --isa rv32imac_zicsr --mabi ilp32
```
4. Daha sonra bu test riscv toolchainlerini kullanarak asagidaki komut ile compile edilmistir:
```
$ python3 run.py --test riscv_arithmetic_basic_test --steps gcc_compile -cs /home/kutaybulun/corev/riscv-dv/target/cv32e40p --isa rv32imac_zicsr --mabi ilp32
```
5. Daha sonra Spike ISS kullanilarak instruction traceleri olusturulmustur:
```
$ python3 run.py --test riscv_arithmetic_basic_test --iss spike --steps iss_sim -cs /home/kutaybulun/corev/riscv-dv/target/cv32e40p --isa rv32imac_zicsr --mabi ilp32
```
6. En sonunda da olusturulan Spike ISS'i logundan coverage alinmistir:
```
$ python3 cov.py --dir /home/kutaybulun/corev/riscv-dv/out_2024-08-27/spike_sim --iss spike --simulator pyflow -cs /home/kutaybulun/corev/riscv-dv/target/cv32e40p
```

"riscv_arithmetic_basic_test_0" icin olusturulan Spike ISS logu, instruction traceleri, riscv-dv/out_2024-08-27/spike_sim pathinde bulunabilir. Ayni test icin olusturulan coverage raporu ise riscv-dv/cov_out_2024-08-27 pathinde bulunabilir.

**riscv-isa-sim** ve **riscv-pk** repolarinin kullanimi:

Bu repolar tamamen standalone Spike ISS'i kullanabilmek icin kopyalanmistir. Amac hem core-v-verif reposunda kosturulan hem de riscv-dv reposunda kosturulan "riscv_arithmetic_basic_test_0" testinin instruction traclerini alip karsilastirmaktir. Bunun icin /spike_elf dosyasi icine core-v-verif'da olusturulan arithmetic testin elf dosyasi kopyalanmis ve asagidaki komut ile spike logu olusturulmustur, karsilastirilacak diger spike log'u zaten riscv-dv/out_2024-08-27/spike_sim bu pathdedir:

```bash
$ spike -l --isa=RV32IMAC_ZICSR /home/kutaybulun/toolchains/riscv/bin/riscv32-unknown-elf/bin/pk riscv_arithmetic_basic_test_0.elf 2>&1 | tee riscv_arithmetic_basic_test_0_verilator.log
```

Son olarak cv32e40p cekirdegi basarili olarak dogrulanip coverage alinsa da olusturulan instruction traceleri loglari, repolarda kosturulan ortamlarin bazi farkliliklarindan dolayi, bazi instructionlarin farkli olmasi gibi, eslesmemektedir.