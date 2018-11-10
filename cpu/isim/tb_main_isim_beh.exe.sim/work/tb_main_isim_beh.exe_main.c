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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_1991350011_3212880686_init();
    work_a_4294229439_3212880686_init();
    work_a_3392787015_3212880686_init();
    work_a_1462010754_3212880686_init();
    work_a_4230703719_3212880686_init();
    work_a_0665050167_3212880686_init();
    work_a_1350853198_3212880686_init();
    work_a_3331799373_3212880686_init();
    work_a_4279895432_3212880686_init();
    work_a_1822559079_3212880686_init();
    work_a_1429157794_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1818675528_3212880686_init();
    work_a_1098786653_3212880686_init();
    work_a_0122406634_3212880686_init();
    work_a_3043359960_3212880686_init();
    work_a_2211474556_3212880686_init();
    work_a_2884579020_3212880686_init();
    work_a_1774854872_3212880686_init();
    work_a_3163762309_2372691052_init();


    xsi_register_tops("work_a_3163762309_2372691052");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
