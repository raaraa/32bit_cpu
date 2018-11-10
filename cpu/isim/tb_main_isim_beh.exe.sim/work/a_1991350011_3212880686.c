/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/raul/Desktop/485-project/cpu/pc.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1991350011_3212880686_p_0(char *t0)
{
    char t8[16];
    char t9[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t10;
    int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;

LAB0:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1928U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;

LAB3:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t1 = (t0 + 5200U);
    t5 = (t0 + 5339);
    t7 = (t9 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 0;
    t10 = (t7 + 4U);
    *((int *)t10) = 15;
    t10 = (t7 + 8U);
    *((int *)t10) = 1;
    t11 = (15 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t8, t2, t1, t5, t9);
    t13 = (t0 + 1808U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t15 = (t8 + 12U);
    t12 = *((unsigned int *)t15);
    t16 = (1U * t12);
    memcpy(t13, t10, t16);

LAB6:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t1 = (t0 + 3424);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3344);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)2, 32U);
    t6 = (t0 + 1808U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 32U);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1928U);
    t5 = *((char **)t1);
    t1 = (t0 + 1808U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    memcpy(t1, t5, 32U);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB6;

}


extern void work_a_1991350011_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1991350011_3212880686_p_0};
	xsi_register_didat("work_a_1991350011_3212880686", "isim/tb_main_isim_beh.exe.sim/work/a_1991350011_3212880686.didat");
	xsi_register_executes(pe);
}
