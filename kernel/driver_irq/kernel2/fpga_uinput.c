#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/ioport.h>
#include <linux/io.h>
#include <linux/interrupt.h>

void *fpga_uinput_mem;
static uint8_t input_state;

static irqreturn_t fpga_uinput_interrupt(int irq, void *dev_id)
{
	if (irq != UINPUT_INT_NUM)
		return IRQ_NONE;

	input_state = ioread8(fpga_uinput_mem);

	return IRQ_HANDLED;
}

static int __init fpga_uinput_init(void)
{
	int ret;
	struct resource *res;

	res = request_mem_region(UINPUT_BASE, UINPUT_SIZE, "fpga_uinput");
	if (res == NULL) {
		ret = -EBUSY;
		goto fail_request_mem;
	}

	fpga_uinput_mem = ioremap(UINPUT_BASE, UINPUT_SIZE);
	if (fpga_uinput_mem == NULL) {
		ret = -EFAULT;
		goto fail_ioremap;
	}

	ret = request_irq(UINPUT_INT_NUM, fpga_uinput_interrupt,
			0, "fpga_uinput", NULL);
	if (ret < 0)
		goto fail_request_irq;

	return 0;

fail_request_irq:
	iounmap(fpga_uinput_mem);
fail_ioremap:
	release_mem_region(UINPUT_BASE, UINPUT_SIZE);
fail_request_mem:
	return ret;
}

static void __exit fpga_uinput_exit(void)
{
	free_irq(UINPUT_INT_NUM, NULL);
	iounmap(fpga_uinput_mem);
	release_mem_region(UINPUT_BASE, UINPUT_SIZE);
	driver_remove_file(&fpga_uinput_driver, &driver_attr_fpga_uinput);
	driver_unregister(&fpga_uinput_driver);
}

MODULE_LICENSE("Dual BSD/GPL");

module_init(fpga_uinput_init);
module_exit(fpga_uinput_exit);
