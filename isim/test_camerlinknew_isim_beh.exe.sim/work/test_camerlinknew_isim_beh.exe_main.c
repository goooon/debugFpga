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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000002304772977_3342287592_init();
    work_m_00000000004293579221_1758562279_init();
    xilinxcorelib_ver_m_00000000000200492576_0409231278_init();
    xilinxcorelib_ver_m_00000000000200492576_2632141972_init();
    xilinxcorelib_ver_m_00000000003991805312_0994216036_init();
    xilinxcorelib_ver_m_00000000001159543956_2744347250_init();
    xilinxcorelib_ver_m_00000000001291582275_0855288388_init();
    work_m_00000000001895379795_0040685386_init();
    work_m_00000000000499773352_2189427456_init();
    work_m_00000000000597395693_2359765006_init();
    work_m_00000000004247741717_2252847249_init();
    work_m_00000000002439531289_2170937526_init();
    work_m_00000000001110212502_1105246375_init();
    xilinxcorelib_ver_m_00000000000200492576_0461066331_init();
    xilinxcorelib_ver_m_00000000000200492576_0810943384_init();
    xilinxcorelib_ver_m_00000000003991805312_1655563806_init();
    xilinxcorelib_ver_m_00000000001159543956_2551839298_init();
    xilinxcorelib_ver_m_00000000001291582275_1500498352_init();
    work_m_00000000003418506907_2799354728_init();
    xilinxcorelib_ver_m_00000000001701721312_2940401099_init();
    xilinxcorelib_ver_m_00000000001159543956_3369165800_init();
    xilinxcorelib_ver_m_00000000001291582275_1661103545_init();
    work_m_00000000003551534035_3299170508_init();
    work_m_00000000003895675596_0032033661_init();
    work_m_00000000002919303749_0556790624_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002919303749_0556790624");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
