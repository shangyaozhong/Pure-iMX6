# "Pure" firmware for SONORE UltraRendu 

Custom Buildroot for creating Pure firmware i-MX6 platform 

![image](https://user-images.githubusercontent.com/33607921/153674427-990adc35-a196-4e92-9234-be66d9b07b60.png)

Compilation requires gcc 9. You can switch to an alternative version of gcc in Ubuntu/Debian by following this [How-To](https://linuxconfig.org/how-to-switch-between-multiple-gcc-and-g-compiler-versions-on-ubuntu-20-04-lts-focal-fossa/)

Start compilation:
```
./make_pure.sh
```
Once completed, the SD image will be generated here:: buildroot/output/images/Rendu_XX_XX_XXXX.gz

SSH root/root
