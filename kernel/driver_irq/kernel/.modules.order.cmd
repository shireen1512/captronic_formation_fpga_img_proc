cmd_/home/ubuntu/driver_irq/kernel/modules.order := {   echo /home/ubuntu/driver_irq/kernel/fpga_uinput.ko; :; } | awk '!x[$$0]++' - > /home/ubuntu/driver_irq/kernel/modules.order
