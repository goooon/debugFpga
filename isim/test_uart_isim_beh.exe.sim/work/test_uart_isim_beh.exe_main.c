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
    xilinxcorelib_ver_m_00000000000200492576_0039870746_init();
    xilinxcorelib_ver_m_00000000001647451333_0501078101_init();
    xilinxcorelib_ver_m_00000000001159543956_1420830970_init();
    xilinxcorelib_ver_m_00000000001291582275_0858444331_init();
    work_m_00000000002417827359_2460546667_init();
    xilinxcorelib_ver_m_00000000001647451333_0655289157_init();
    xilinxcorelib_ver_m_00000000001159543956_2574447649_init();
    xilinxcorelib_ver_m_00000000001291582275_1353049866_init();
    work_m_00000000001895379795_4051223377_init();
    work_m_00000000002288433133_3187871909_init();
    work_m_00000000002949359739_0822216910_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002949359739_0822216910");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
