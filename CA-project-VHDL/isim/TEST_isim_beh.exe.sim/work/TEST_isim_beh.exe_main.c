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

char *STD_STANDARD;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *WORK_P_0972559976;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_0972559976_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3104156649_3212880686_init();
    work_a_3501706103_3212880686_init();
    work_a_3720008646_1566020785_init();
    work_a_0931872791_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_0257683474_1656169240_init();
    work_a_0556873335_3212880686_init();
    work_a_0109779619_3212880686_init();
    work_a_3853510154_3212880686_init();
    work_a_3235599682_4264778588_init();
    work_a_0494850362_3212880686_init();
    work_a_4184868987_3212880686_init();
    work_a_1774854872_3212880686_init();
    work_a_1985558087_2372691052_init();


    xsi_register_tops("work_a_1985558087_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_0972559976 = xsi_get_engine_memory("work_p_0972559976");

    return xsi_run_simulation(argc, argv);

}
