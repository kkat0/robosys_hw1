obj-m:= myled.o

myled.ko:
	make -C /lib/modules/$(shell uname -r)/build  M=$(shell pwd) V=1 modules

clean:
	make -C /lib/modules/$(shell uname -r)/build  M=$(shell pwd) V=1 clean
