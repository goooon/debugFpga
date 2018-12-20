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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/theproject/14_ethernet_test/rtl/iprecieve.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {0U, 0U, 0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {85U, 0U};
static unsigned int ng5[] = {5U, 0U};
static int ng6[] = {0, 0};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {213U, 0U};
static unsigned int ng9[] = {3U, 0U};
static unsigned int ng10[] = {11U, 0U};
static unsigned int ng11[] = {10U, 0U};
static unsigned int ng12[] = {13569U, 0U};
static unsigned int ng13[] = {65216U, 0U};
static unsigned int ng14[] = {4U, 0U};
static unsigned int ng15[] = {19U, 0U};
static unsigned int ng16[] = {6U, 0U};
static unsigned int ng17[] = {7U, 0U};
static int ng18[] = {9, 0};
static unsigned int ng19[] = {8U, 0U};



static void Initial_40_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(41, ng0);

LAB2:    xsi_set_current_line(42, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 4, 0LL);

LAB1:    return;
}

static void Always_45_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 8320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 8888);
    *((int *)t2) = 1;
    t3 = (t0 + 8352);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 2432U);
    t5 = *((char **)t4);
    t4 = (t0 + 6992);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 8, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2592U);
    t3 = *((char **)t2);
    t2 = (t0 + 7152);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_51_2(char *t0)
{
    char t4[8];
    char t30[8];
    char t43[8];
    char t67[16];
    char t68[8];
    char t69[8];
    char t75[8];
    char t117[8];
    char t141[24];
    char t142[24];
    char t143[16];
    char t144[8];
    char t145[8];
    char t154[8];
    char t170[8];
    char t178[8];
    char t217[40];
    char t218[40];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    int t99;
    int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    char *t115;
    char *t116;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    char *t139;
    char *t140;
    char *t146;
    char *t147;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    char *t155;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    char *t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    char *t177;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    char *t182;
    char *t183;
    char *t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    char *t192;
    char *t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    char *t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    char *t215;
    char *t216;

LAB0:    t1 = (t0 + 8568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 8904);
    *((int *)t2) = 1;
    t3 = (t0 + 8600);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);

LAB5:    xsi_set_current_line(53, ng0);
    t5 = (t0 + 2752U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 5232);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB14:    t6 = ((char*)((ng1)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t6, 4);
    if (t21 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng3)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t21 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t21 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t21 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng14)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t21 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng5)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t21 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng16)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t21 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng17)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t21 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng19)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t21 == 1)
        goto LAB31;

LAB32:
LAB34:
LAB33:    xsi_set_current_line(213, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB35:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(53, ng0);

LAB13:    xsi_set_current_line(54, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 4, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3152);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB12;

LAB15:    xsi_set_current_line(60, ng0);

LAB36:    xsi_set_current_line(61, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 4592);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6192);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6672);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6032);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 64, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 7152);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t13 = (t6 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t13);
    t11 = *((unsigned int *)t19);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t19);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB40;

LAB37:    if (t18 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t4) = 1;

LAB40:    t24 = (t4 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB41;

LAB42:
LAB43:    goto LAB35;

LAB17:    xsi_set_current_line(76, ng0);

LAB53:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 6992);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 0);
    *((unsigned int *)t13) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 255U);
    t14 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t14 & 255U);
    t20 = ((char*)((ng4)));
    memset(t30, 0, 8);
    t24 = (t4 + 4);
    t31 = (t20 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t20);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t24);
    t22 = *((unsigned int *)t31);
    t23 = (t18 ^ t22);
    t25 = (t17 | t23);
    t26 = *((unsigned int *)t24);
    t27 = *((unsigned int *)t31);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t36 = (t25 & t29);
    if (t36 != 0)
        goto LAB57;

LAB54:    if (t28 != 0)
        goto LAB56;

LAB55:    *((unsigned int *)t30) = 1;

LAB57:    memset(t43, 0, 8);
    t33 = (t30 + 4);
    t37 = *((unsigned int *)t33);
    t38 = (~(t37));
    t39 = *((unsigned int *)t30);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t33) != 0)
        goto LAB60;

LAB61:    t35 = (t43 + 4);
    t46 = *((unsigned int *)t43);
    t47 = *((unsigned int *)t35);
    t48 = (t46 || t47);
    if (t48 > 0)
        goto LAB62;

LAB63:    memcpy(t75, t43, 8);

LAB64:    t107 = (t75 + 4);
    t108 = *((unsigned int *)t107);
    t109 = (~(t108));
    t110 = *((unsigned int *)t75);
    t111 = (t110 & t109);
    t112 = (t111 != 0);
    if (t112 > 0)
        goto LAB76;

LAB77:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB78:    goto LAB35;

LAB19:    xsi_set_current_line(88, ng0);

LAB88:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 6992);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 0);
    *((unsigned int *)t13) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 255U);
    t14 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t14 & 255U);
    t20 = ((char*)((ng8)));
    memset(t30, 0, 8);
    t24 = (t4 + 4);
    t31 = (t20 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t20);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t24);
    t22 = *((unsigned int *)t31);
    t23 = (t18 ^ t22);
    t25 = (t17 | t23);
    t26 = *((unsigned int *)t24);
    t27 = *((unsigned int *)t31);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t36 = (t25 & t29);
    if (t36 != 0)
        goto LAB92;

LAB89:    if (t28 != 0)
        goto LAB91;

LAB90:    *((unsigned int *)t30) = 1;

LAB92:    memset(t43, 0, 8);
    t33 = (t30 + 4);
    t37 = *((unsigned int *)t33);
    t38 = (~(t37));
    t39 = *((unsigned int *)t30);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t33) != 0)
        goto LAB95;

LAB96:    t35 = (t43 + 4);
    t46 = *((unsigned int *)t43);
    t47 = *((unsigned int *)t35);
    t48 = (t46 || t47);
    if (t48 > 0)
        goto LAB97;

LAB98:    memcpy(t75, t43, 8);

LAB99:    t107 = (t75 + 4);
    t108 = *((unsigned int *)t107);
    t109 = (~(t108));
    t110 = *((unsigned int *)t75);
    t111 = (t110 & t109);
    t112 = (t111 != 0);
    if (t112 > 0)
        goto LAB111;

LAB112:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB113:    goto LAB35;

LAB21:    xsi_set_current_line(94, ng0);

LAB114:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 7152);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB118;

LAB115:    if (t18 != 0)
        goto LAB117;

LAB116:    *((unsigned int *)t4) = 1;

LAB118:    t31 = (t4 + 4);
    t25 = *((unsigned int *)t31);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB119;

LAB120:    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB121:    goto LAB35;

LAB23:    xsi_set_current_line(113, ng0);

LAB176:    xsi_set_current_line(114, ng0);
    t3 = (t0 + 7152);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB180;

LAB177:    if (t18 != 0)
        goto LAB179;

LAB178:    *((unsigned int *)t4) = 1;

LAB180:    t31 = (t4 + 4);
    t25 = *((unsigned int *)t31);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB181;

LAB182:    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB183:    goto LAB35;

LAB25:    xsi_set_current_line(129, ng0);

LAB195:    xsi_set_current_line(130, ng0);
    t3 = ((char*)((ng1)));
    t6 = (t0 + 4592);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 7152);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t13 = (t6 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t13);
    t11 = *((unsigned int *)t19);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t19);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB199;

LAB196:    if (t18 != 0)
        goto LAB198;

LAB197:    *((unsigned int *)t4) = 1;

LAB199:    t24 = (t4 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB200;

LAB201:    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB202:    goto LAB35;

LAB27:    xsi_set_current_line(145, ng0);

LAB214:    xsi_set_current_line(146, ng0);
    t3 = (t0 + 3952);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 32);
    t20 = (t12 + 36);
    t7 = *((unsigned int *)t19);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t20);
    t10 = (t9 >> 0);
    *((unsigned int *)t13) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 65535U);
    t14 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t14 & 65535U);
    t24 = (t0 + 6832);
    xsi_vlogvar_wait_assign_value(t24, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 3952);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t12 = (t4 + 4);
    t13 = (t6 + 8);
    t19 = (t6 + 12);
    t7 = *((unsigned int *)t13);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 0);
    *((unsigned int *)t12) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 4294967295U);
    t14 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t14 & 4294967295U);
    t20 = (t0 + 4112);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 3952);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t12 = (t4 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t13);
    t10 = (t9 >> 0);
    *((unsigned int *)t12) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 4294967295U);
    t14 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t14 & 4294967295U);
    t19 = (t0 + 4272);
    xsi_vlogvar_wait_assign_value(t19, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 7152);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t13 = (t6 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t13);
    t11 = *((unsigned int *)t19);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t19);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB218;

LAB215:    if (t18 != 0)
        goto LAB217;

LAB216:    *((unsigned int *)t4) = 1;

LAB218:    t24 = (t4 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB219;

LAB220:    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB221:    goto LAB35;

LAB29:    xsi_set_current_line(168, ng0);

LAB233:    xsi_set_current_line(169, ng0);
    t3 = (t0 + 7152);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB237;

LAB234:    if (t18 != 0)
        goto LAB236;

LAB235:    *((unsigned int *)t4) = 1;

LAB237:    t31 = (t4 + 4);
    t25 = *((unsigned int *)t31);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB238;

LAB239:    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB240:    goto LAB35;

LAB31:    xsi_set_current_line(208, ng0);

LAB293:    xsi_set_current_line(209, ng0);
    t3 = ((char*)((ng1)));
    t6 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(210, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(211, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB35;

LAB39:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB40;

LAB41:    xsi_set_current_line(67, ng0);

LAB44:    xsi_set_current_line(68, ng0);
    t31 = (t0 + 6992);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memset(t30, 0, 8);
    t34 = (t30 + 4);
    t35 = (t33 + 4);
    t36 = *((unsigned int *)t33);
    t37 = (t36 >> 0);
    *((unsigned int *)t30) = t37;
    t38 = *((unsigned int *)t35);
    t39 = (t38 >> 0);
    *((unsigned int *)t34) = t39;
    t40 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t40 & 255U);
    t41 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t41 & 255U);
    t42 = ((char*)((ng4)));
    memset(t43, 0, 8);
    t44 = (t30 + 4);
    t45 = (t42 + 4);
    t46 = *((unsigned int *)t30);
    t47 = *((unsigned int *)t42);
    t48 = (t46 ^ t47);
    t49 = *((unsigned int *)t44);
    t50 = *((unsigned int *)t45);
    t51 = (t49 ^ t50);
    t52 = (t48 | t51);
    t53 = *((unsigned int *)t44);
    t54 = *((unsigned int *)t45);
    t55 = (t53 | t54);
    t56 = (~(t55));
    t57 = (t52 & t56);
    if (t57 != 0)
        goto LAB48;

LAB45:    if (t55 != 0)
        goto LAB47;

LAB46:    *((unsigned int *)t43) = 1;

LAB48:    t59 = (t43 + 4);
    t60 = *((unsigned int *)t59);
    t61 = (~(t60));
    t62 = *((unsigned int *)t43);
    t63 = (t62 & t61);
    t64 = (t63 != 0);
    if (t64 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB51:    goto LAB43;

LAB47:    t58 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB48;

LAB49:    xsi_set_current_line(68, ng0);

LAB52:    xsi_set_current_line(69, ng0);
    t65 = ((char*)((ng3)));
    t66 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t66, t65, 0, 0, 4, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 6992);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t12 = (t4 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t13);
    t10 = (t9 >> 0);
    *((unsigned int *)t12) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 255U);
    t14 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t14 & 255U);
    t19 = (t0 + 6032);
    t20 = (t19 + 56U);
    t24 = *((char **)t20);
    memset(t30, 0, 8);
    t31 = (t30 + 4);
    t32 = (t24 + 4);
    t15 = *((unsigned int *)t24);
    t16 = (t15 >> 0);
    *((unsigned int *)t30) = t16;
    t17 = *((unsigned int *)t32);
    t18 = (t17 >> 0);
    *((unsigned int *)t31) = t18;
    t22 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t22 & 16777215U);
    t23 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t23 & 16777215U);
    xsi_vlogtype_concat(t67, 64, 32, 2U, t30, 24, t4, 8);
    t33 = (t0 + 6032);
    xsi_vlogvar_wait_assign_value(t33, t67, 0, 0, 64, 0LL);
    goto LAB51;

LAB56:    t32 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB57;

LAB58:    *((unsigned int *)t43) = 1;
    goto LAB61;

LAB60:    t34 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB61;

LAB62:    t42 = (t0 + 7152);
    t44 = (t42 + 56U);
    t45 = *((char **)t44);
    t58 = ((char*)((ng3)));
    memset(t68, 0, 8);
    t59 = (t45 + 4);
    t65 = (t58 + 4);
    t49 = *((unsigned int *)t45);
    t50 = *((unsigned int *)t58);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t59);
    t53 = *((unsigned int *)t65);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t59);
    t57 = *((unsigned int *)t65);
    t60 = (t56 | t57);
    t61 = (~(t60));
    t62 = (t55 & t61);
    if (t62 != 0)
        goto LAB68;

LAB65:    if (t60 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t68) = 1;

LAB68:    memset(t69, 0, 8);
    t70 = (t68 + 4);
    t63 = *((unsigned int *)t70);
    t64 = (~(t63));
    t71 = *((unsigned int *)t68);
    t72 = (t71 & t64);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB69;

LAB70:    if (*((unsigned int *)t70) != 0)
        goto LAB71;

LAB72:    t76 = *((unsigned int *)t43);
    t77 = *((unsigned int *)t69);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t79 = (t43 + 4);
    t80 = (t69 + 4);
    t81 = (t75 + 4);
    t82 = *((unsigned int *)t79);
    t83 = *((unsigned int *)t80);
    t84 = (t82 | t83);
    *((unsigned int *)t81) = t84;
    t85 = *((unsigned int *)t81);
    t86 = (t85 != 0);
    if (t86 == 1)
        goto LAB73;

LAB74:
LAB75:    goto LAB64;

LAB67:    t66 = (t68 + 4);
    *((unsigned int *)t68) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB68;

LAB69:    *((unsigned int *)t69) = 1;
    goto LAB72;

LAB71:    t74 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t74) = 1;
    goto LAB72;

LAB73:    t87 = *((unsigned int *)t75);
    t88 = *((unsigned int *)t81);
    *((unsigned int *)t75) = (t87 | t88);
    t89 = (t43 + 4);
    t90 = (t69 + 4);
    t91 = *((unsigned int *)t43);
    t92 = (~(t91));
    t93 = *((unsigned int *)t89);
    t94 = (~(t93));
    t95 = *((unsigned int *)t69);
    t96 = (~(t95));
    t97 = *((unsigned int *)t90);
    t98 = (~(t97));
    t99 = (t92 & t94);
    t100 = (t96 & t98);
    t101 = (~(t99));
    t102 = (~(t100));
    t103 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t103 & t101);
    t104 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t104 & t102);
    t105 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t105 & t101);
    t106 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t106 & t102);
    goto LAB75;

LAB76:    xsi_set_current_line(77, ng0);

LAB79:    xsi_set_current_line(78, ng0);
    t113 = (t0 + 6352);
    t114 = (t113 + 56U);
    t115 = *((char **)t114);
    t116 = ((char*)((ng5)));
    memset(t117, 0, 8);
    t118 = (t115 + 4);
    t119 = (t116 + 4);
    t120 = *((unsigned int *)t115);
    t121 = *((unsigned int *)t116);
    t122 = (t120 ^ t121);
    t123 = *((unsigned int *)t118);
    t124 = *((unsigned int *)t119);
    t125 = (t123 ^ t124);
    t126 = (t122 | t125);
    t127 = *((unsigned int *)t118);
    t128 = *((unsigned int *)t119);
    t129 = (t127 | t128);
    t130 = (~(t129));
    t131 = (t126 & t130);
    if (t131 != 0)
        goto LAB83;

LAB80:    if (t129 != 0)
        goto LAB82;

LAB81:    *((unsigned int *)t117) = 1;

LAB83:    t133 = (t117 + 4);
    t134 = *((unsigned int *)t133);
    t135 = (~(t134));
    t136 = *((unsigned int *)t117);
    t137 = (t136 & t135);
    t138 = (t137 != 0);
    if (t138 > 0)
        goto LAB84;

LAB85:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6352);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 5, t6, 5, t12, 5);
    t13 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 5, 0LL);

LAB86:    goto LAB78;

LAB82:    t132 = (t117 + 4);
    *((unsigned int *)t117) = 1;
    *((unsigned int *)t132) = 1;
    goto LAB83;

LAB84:    xsi_set_current_line(78, ng0);

LAB87:    xsi_set_current_line(79, ng0);
    t139 = ((char*)((ng6)));
    t140 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t140, t139, 0, 0, 5, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB86;

LAB91:    t32 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB92;

LAB93:    *((unsigned int *)t43) = 1;
    goto LAB96;

LAB95:    t34 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB96;

LAB97:    t42 = (t0 + 7152);
    t44 = (t42 + 56U);
    t45 = *((char **)t44);
    t58 = ((char*)((ng3)));
    memset(t68, 0, 8);
    t59 = (t45 + 4);
    t65 = (t58 + 4);
    t49 = *((unsigned int *)t45);
    t50 = *((unsigned int *)t58);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t59);
    t53 = *((unsigned int *)t65);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t59);
    t57 = *((unsigned int *)t65);
    t60 = (t56 | t57);
    t61 = (~(t60));
    t62 = (t55 & t61);
    if (t62 != 0)
        goto LAB103;

LAB100:    if (t60 != 0)
        goto LAB102;

LAB101:    *((unsigned int *)t68) = 1;

LAB103:    memset(t69, 0, 8);
    t70 = (t68 + 4);
    t63 = *((unsigned int *)t70);
    t64 = (~(t63));
    t71 = *((unsigned int *)t68);
    t72 = (t71 & t64);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t70) != 0)
        goto LAB106;

LAB107:    t76 = *((unsigned int *)t43);
    t77 = *((unsigned int *)t69);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t79 = (t43 + 4);
    t80 = (t69 + 4);
    t81 = (t75 + 4);
    t82 = *((unsigned int *)t79);
    t83 = *((unsigned int *)t80);
    t84 = (t82 | t83);
    *((unsigned int *)t81) = t84;
    t85 = *((unsigned int *)t81);
    t86 = (t85 != 0);
    if (t86 == 1)
        goto LAB108;

LAB109:
LAB110:    goto LAB99;

LAB102:    t66 = (t68 + 4);
    *((unsigned int *)t68) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB103;

LAB104:    *((unsigned int *)t69) = 1;
    goto LAB107;

LAB106:    t74 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t74) = 1;
    goto LAB107;

LAB108:    t87 = *((unsigned int *)t75);
    t88 = *((unsigned int *)t81);
    *((unsigned int *)t75) = (t87 | t88);
    t89 = (t43 + 4);
    t90 = (t69 + 4);
    t91 = *((unsigned int *)t43);
    t92 = (~(t91));
    t93 = *((unsigned int *)t89);
    t94 = (~(t93));
    t95 = *((unsigned int *)t69);
    t96 = (~(t95));
    t97 = *((unsigned int *)t90);
    t98 = (~(t97));
    t99 = (t92 & t94);
    t100 = (t96 & t98);
    t101 = (~(t99));
    t102 = (~(t100));
    t103 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t103 & t101);
    t104 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t104 & t102);
    t105 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t105 & t101);
    t106 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t106 & t102);
    goto LAB110;

LAB111:    xsi_set_current_line(90, ng0);
    t113 = ((char*)((ng9)));
    t114 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t114, t113, 0, 0, 4, 0LL);
    goto LAB113;

LAB117:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB118;

LAB119:    xsi_set_current_line(95, ng0);

LAB122:    xsi_set_current_line(96, ng0);
    t32 = (t0 + 6352);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng10)));
    memset(t30, 0, 8);
    t42 = (t34 + 4);
    if (*((unsigned int *)t42) != 0)
        goto LAB124;

LAB123:    t44 = (t35 + 4);
    if (*((unsigned int *)t44) != 0)
        goto LAB124;

LAB127:    if (*((unsigned int *)t34) < *((unsigned int *)t35))
        goto LAB125;

LAB126:    t58 = (t30 + 4);
    t36 = *((unsigned int *)t58);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 != 0);
    if (t40 > 0)
        goto LAB128;

LAB129:    xsi_set_current_line(100, ng0);

LAB132:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 6512);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    xsi_vlog_get_part_select_value(t67, 48, t6, 87, 40);
    t12 = (t0 + 3472);
    xsi_vlogvar_wait_assign_value(t12, t67, 0, 0, 48, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 6992);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = (t0 + 6512);
    t13 = (t12 + 56U);
    t19 = *((char **)t13);
    xsi_vlog_get_part_select_value(t143, 40, t19, 39, 0);
    xsi_vlogtype_concat(t67, 48, 48, 2U, t143, 40, t6, 8);
    t20 = (t0 + 3632);
    xsi_vlogvar_wait_assign_value(t20, t67, 0, 0, 48, 0LL);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 6512);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t12 = (t4 + 4);
    t13 = (t6 + 16);
    t19 = (t6 + 20);
    t7 = *((unsigned int *)t13);
    t8 = (t7 >> 8);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 8);
    *((unsigned int *)t12) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 65535U);
    t14 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t14 & 65535U);
    t20 = ((char*)((ng11)));
    memset(t30, 0, 8);
    t24 = (t4 + 4);
    t31 = (t20 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t20);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t24);
    t22 = *((unsigned int *)t31);
    t23 = (t18 ^ t22);
    t25 = (t17 | t23);
    t26 = *((unsigned int *)t24);
    t27 = *((unsigned int *)t31);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t36 = (t25 & t29);
    if (t36 != 0)
        goto LAB136;

LAB133:    if (t28 != 0)
        goto LAB135;

LAB134:    *((unsigned int *)t30) = 1;

LAB136:    memset(t43, 0, 8);
    t33 = (t30 + 4);
    t37 = *((unsigned int *)t33);
    t38 = (~(t37));
    t39 = *((unsigned int *)t30);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB137;

LAB138:    if (*((unsigned int *)t33) != 0)
        goto LAB139;

LAB140:    t35 = (t43 + 4);
    t46 = *((unsigned int *)t43);
    t47 = *((unsigned int *)t35);
    t48 = (t46 || t47);
    if (t48 > 0)
        goto LAB141;

LAB142:    memcpy(t117, t43, 8);

LAB143:    memset(t144, 0, 8);
    t118 = (t117 + 4);
    t127 = *((unsigned int *)t118);
    t128 = (~(t127));
    t129 = *((unsigned int *)t117);
    t130 = (t129 & t128);
    t131 = (t130 & 1U);
    if (t131 != 0)
        goto LAB155;

LAB156:    if (*((unsigned int *)t118) != 0)
        goto LAB157;

LAB158:    t132 = (t144 + 4);
    t134 = *((unsigned int *)t144);
    t135 = *((unsigned int *)t132);
    t136 = (t134 || t135);
    if (t136 > 0)
        goto LAB159;

LAB160:    memcpy(t178, t144, 8);

LAB161:    t209 = (t178 + 4);
    t210 = *((unsigned int *)t209);
    t211 = (~(t210));
    t212 = *((unsigned int *)t178);
    t213 = (t212 & t211);
    t214 = (t213 != 0);
    if (t214 > 0)
        goto LAB173;

LAB174:    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB175:
LAB130:    goto LAB121;

LAB124:    t45 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB126;

LAB125:    *((unsigned int *)t30) = 1;
    goto LAB126;

LAB128:    xsi_set_current_line(96, ng0);

LAB131:    xsi_set_current_line(97, ng0);
    t59 = (t0 + 6992);
    t65 = (t59 + 56U);
    t66 = *((char **)t65);
    t70 = (t0 + 6512);
    t74 = (t70 + 56U);
    t79 = *((char **)t74);
    xsi_vlog_get_part_select_value(t142, 88, t79, 87, 0);
    xsi_vlogtype_concat(t141, 96, 96, 2U, t142, 88, t66, 8);
    t80 = (t0 + 6512);
    xsi_vlogvar_wait_assign_value(t80, t141, 0, 0, 96, 0LL);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 6352);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 5, t6, 5, t12, 5);
    t13 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 5, 0LL);
    goto LAB130;

LAB135:    t32 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB136;

LAB137:    *((unsigned int *)t43) = 1;
    goto LAB140;

LAB139:    t34 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB140;

LAB141:    t42 = (t0 + 6512);
    t44 = (t42 + 56U);
    t45 = *((char **)t44);
    memset(t68, 0, 8);
    t58 = (t68 + 4);
    t59 = (t45 + 8);
    t65 = (t45 + 12);
    t49 = *((unsigned int *)t59);
    t50 = (t49 >> 24);
    *((unsigned int *)t68) = t50;
    t51 = *((unsigned int *)t65);
    t52 = (t51 >> 24);
    *((unsigned int *)t58) = t52;
    t66 = (t45 + 16);
    t70 = (t45 + 20);
    t53 = *((unsigned int *)t66);
    t54 = (t53 << 8);
    t55 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t55 | t54);
    t56 = *((unsigned int *)t70);
    t57 = (t56 << 8);
    t60 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t60 | t57);
    t61 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t61 & 65535U);
    t62 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t62 & 65535U);
    t74 = ((char*)((ng12)));
    memset(t69, 0, 8);
    t79 = (t68 + 4);
    t80 = (t74 + 4);
    t63 = *((unsigned int *)t68);
    t64 = *((unsigned int *)t74);
    t71 = (t63 ^ t64);
    t72 = *((unsigned int *)t79);
    t73 = *((unsigned int *)t80);
    t76 = (t72 ^ t73);
    t77 = (t71 | t76);
    t78 = *((unsigned int *)t79);
    t82 = *((unsigned int *)t80);
    t83 = (t78 | t82);
    t84 = (~(t83));
    t85 = (t77 & t84);
    if (t85 != 0)
        goto LAB147;

LAB144:    if (t83 != 0)
        goto LAB146;

LAB145:    *((unsigned int *)t69) = 1;

LAB147:    memset(t75, 0, 8);
    t89 = (t69 + 4);
    t86 = *((unsigned int *)t89);
    t87 = (~(t86));
    t88 = *((unsigned int *)t69);
    t91 = (t88 & t87);
    t92 = (t91 & 1U);
    if (t92 != 0)
        goto LAB148;

LAB149:    if (*((unsigned int *)t89) != 0)
        goto LAB150;

LAB151:    t93 = *((unsigned int *)t43);
    t94 = *((unsigned int *)t75);
    t95 = (t93 & t94);
    *((unsigned int *)t117) = t95;
    t107 = (t43 + 4);
    t113 = (t75 + 4);
    t114 = (t117 + 4);
    t96 = *((unsigned int *)t107);
    t97 = *((unsigned int *)t113);
    t98 = (t96 | t97);
    *((unsigned int *)t114) = t98;
    t101 = *((unsigned int *)t114);
    t102 = (t101 != 0);
    if (t102 == 1)
        goto LAB152;

LAB153:
LAB154:    goto LAB143;

LAB146:    t81 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB147;

LAB148:    *((unsigned int *)t75) = 1;
    goto LAB151;

LAB150:    t90 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB151;

LAB152:    t103 = *((unsigned int *)t117);
    t104 = *((unsigned int *)t114);
    *((unsigned int *)t117) = (t103 | t104);
    t115 = (t43 + 4);
    t116 = (t75 + 4);
    t105 = *((unsigned int *)t43);
    t106 = (~(t105));
    t108 = *((unsigned int *)t115);
    t109 = (~(t108));
    t110 = *((unsigned int *)t75);
    t111 = (~(t110));
    t112 = *((unsigned int *)t116);
    t120 = (~(t112));
    t21 = (t106 & t109);
    t99 = (t111 & t120);
    t121 = (~(t21));
    t122 = (~(t99));
    t123 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t123 & t121);
    t124 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t124 & t122);
    t125 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t125 & t121);
    t126 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t126 & t122);
    goto LAB154;

LAB155:    *((unsigned int *)t144) = 1;
    goto LAB158;

LAB157:    t119 = (t144 + 4);
    *((unsigned int *)t144) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB158;

LAB159:    t133 = (t0 + 6512);
    t139 = (t133 + 56U);
    t140 = *((char **)t139);
    memset(t145, 0, 8);
    t146 = (t145 + 4);
    t147 = (t140 + 8);
    t148 = (t140 + 12);
    t137 = *((unsigned int *)t147);
    t138 = (t137 >> 8);
    *((unsigned int *)t145) = t138;
    t149 = *((unsigned int *)t148);
    t150 = (t149 >> 8);
    *((unsigned int *)t146) = t150;
    t151 = *((unsigned int *)t145);
    *((unsigned int *)t145) = (t151 & 65535U);
    t152 = *((unsigned int *)t146);
    *((unsigned int *)t146) = (t152 & 65535U);
    t153 = ((char*)((ng13)));
    memset(t154, 0, 8);
    t155 = (t145 + 4);
    t156 = (t153 + 4);
    t157 = *((unsigned int *)t145);
    t158 = *((unsigned int *)t153);
    t159 = (t157 ^ t158);
    t160 = *((unsigned int *)t155);
    t161 = *((unsigned int *)t156);
    t162 = (t160 ^ t161);
    t163 = (t159 | t162);
    t164 = *((unsigned int *)t155);
    t165 = *((unsigned int *)t156);
    t166 = (t164 | t165);
    t167 = (~(t166));
    t168 = (t163 & t167);
    if (t168 != 0)
        goto LAB165;

LAB162:    if (t166 != 0)
        goto LAB164;

LAB163:    *((unsigned int *)t154) = 1;

LAB165:    memset(t170, 0, 8);
    t171 = (t154 + 4);
    t172 = *((unsigned int *)t171);
    t173 = (~(t172));
    t174 = *((unsigned int *)t154);
    t175 = (t174 & t173);
    t176 = (t175 & 1U);
    if (t176 != 0)
        goto LAB166;

LAB167:    if (*((unsigned int *)t171) != 0)
        goto LAB168;

LAB169:    t179 = *((unsigned int *)t144);
    t180 = *((unsigned int *)t170);
    t181 = (t179 & t180);
    *((unsigned int *)t178) = t181;
    t182 = (t144 + 4);
    t183 = (t170 + 4);
    t184 = (t178 + 4);
    t185 = *((unsigned int *)t182);
    t186 = *((unsigned int *)t183);
    t187 = (t185 | t186);
    *((unsigned int *)t184) = t187;
    t188 = *((unsigned int *)t184);
    t189 = (t188 != 0);
    if (t189 == 1)
        goto LAB170;

LAB171:
LAB172:    goto LAB161;

LAB164:    t169 = (t154 + 4);
    *((unsigned int *)t154) = 1;
    *((unsigned int *)t169) = 1;
    goto LAB165;

LAB166:    *((unsigned int *)t170) = 1;
    goto LAB169;

LAB168:    t177 = (t170 + 4);
    *((unsigned int *)t170) = 1;
    *((unsigned int *)t177) = 1;
    goto LAB169;

LAB170:    t190 = *((unsigned int *)t178);
    t191 = *((unsigned int *)t184);
    *((unsigned int *)t178) = (t190 | t191);
    t192 = (t144 + 4);
    t193 = (t170 + 4);
    t194 = *((unsigned int *)t144);
    t195 = (~(t194));
    t196 = *((unsigned int *)t192);
    t197 = (~(t196));
    t198 = *((unsigned int *)t170);
    t199 = (~(t198));
    t200 = *((unsigned int *)t193);
    t201 = (~(t200));
    t100 = (t195 & t197);
    t202 = (t199 & t201);
    t203 = (~(t100));
    t204 = (~(t202));
    t205 = *((unsigned int *)t184);
    *((unsigned int *)t184) = (t205 & t203);
    t206 = *((unsigned int *)t184);
    *((unsigned int *)t184) = (t206 & t204);
    t207 = *((unsigned int *)t178);
    *((unsigned int *)t178) = (t207 & t203);
    t208 = *((unsigned int *)t178);
    *((unsigned int *)t178) = (t208 & t204);
    goto LAB172;

LAB173:    xsi_set_current_line(105, ng0);
    t215 = ((char*)((ng14)));
    t216 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t216, t215, 0, 0, 4, 0LL);
    goto LAB175;

LAB179:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB180;

LAB181:    xsi_set_current_line(114, ng0);

LAB184:    xsi_set_current_line(115, ng0);
    t32 = (t0 + 6352);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng3)));
    memset(t30, 0, 8);
    t42 = (t34 + 4);
    if (*((unsigned int *)t42) != 0)
        goto LAB186;

LAB185:    t44 = (t35 + 4);
    if (*((unsigned int *)t44) != 0)
        goto LAB186;

LAB189:    if (*((unsigned int *)t34) < *((unsigned int *)t35))
        goto LAB187;

LAB188:    t58 = (t30 + 4);
    t36 = *((unsigned int *)t58);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 != 0);
    if (t40 > 0)
        goto LAB190;

LAB191:    xsi_set_current_line(119, ng0);

LAB194:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 6992);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    memset(t30, 0, 8);
    t12 = (t30 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (t7 >> 0);
    *((unsigned int *)t30) = t8;
    t9 = *((unsigned int *)t13);
    t10 = (t9 >> 0);
    *((unsigned int *)t12) = t10;
    t11 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t11 & 255U);
    t14 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t14 & 255U);
    t19 = (t0 + 5552);
    t20 = (t19 + 56U);
    t24 = *((char **)t20);
    memset(t43, 0, 8);
    t31 = (t43 + 4);
    t32 = (t24 + 4);
    t15 = *((unsigned int *)t24);
    t16 = (t15 >> 0);
    *((unsigned int *)t43) = t16;
    t17 = *((unsigned int *)t32);
    t18 = (t17 >> 0);
    *((unsigned int *)t31) = t18;
    t22 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t22 & 255U);
    t23 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t23 & 255U);
    xsi_vlogtype_concat(t4, 16, 16, 2U, t43, 8, t30, 8);
    t33 = (t0 + 3792);
    xsi_vlogvar_wait_assign_value(t33, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4592);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB192:    goto LAB183;

LAB186:    t45 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB188;

LAB187:    *((unsigned int *)t30) = 1;
    goto LAB188;

LAB190:    xsi_set_current_line(115, ng0);

LAB193:    xsi_set_current_line(116, ng0);
    t59 = (t0 + 6992);
    t65 = (t59 + 56U);
    t66 = *((char **)t65);
    memset(t68, 0, 8);
    t70 = (t68 + 4);
    t74 = (t66 + 4);
    t41 = *((unsigned int *)t66);
    t46 = (t41 >> 0);
    *((unsigned int *)t68) = t46;
    t47 = *((unsigned int *)t74);
    t48 = (t47 >> 0);
    *((unsigned int *)t70) = t48;
    t49 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t49 & 255U);
    t50 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t50 & 255U);
    t79 = (t0 + 5552);
    t80 = (t79 + 56U);
    t81 = *((char **)t80);
    memset(t69, 0, 8);
    t89 = (t69 + 4);
    t90 = (t81 + 4);
    t51 = *((unsigned int *)t81);
    t52 = (t51 >> 0);
    *((unsigned int *)t69) = t52;
    t53 = *((unsigned int *)t90);
    t54 = (t53 >> 0);
    *((unsigned int *)t89) = t54;
    t55 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t55 & 255U);
    t56 = *((unsigned int *)t89);
    *((unsigned int *)t89) = (t56 & 255U);
    xsi_vlogtype_concat(t43, 16, 16, 2U, t69, 8, t68, 8);
    t107 = (t0 + 5552);
    xsi_vlogvar_wait_assign_value(t107, t43, 0, 0, 16, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 6352);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 5, t6, 5, t12, 5);
    t13 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 5, 0LL);
    goto LAB192;

LAB198:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB199;

LAB200:    xsi_set_current_line(131, ng0);

LAB203:    xsi_set_current_line(132, ng0);
    t31 = (t0 + 6352);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng15)));
    memset(t30, 0, 8);
    t35 = (t33 + 4);
    if (*((unsigned int *)t35) != 0)
        goto LAB205;

LAB204:    t42 = (t34 + 4);
    if (*((unsigned int *)t42) != 0)
        goto LAB205;

LAB208:    if (*((unsigned int *)t33) < *((unsigned int *)t34))
        goto LAB206;

LAB207:    t45 = (t30 + 4);
    t36 = *((unsigned int *)t45);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 != 0);
    if (t40 > 0)
        goto LAB209;

LAB210:    xsi_set_current_line(136, ng0);

LAB213:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 6992);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t12 = (t4 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t13);
    t10 = (t9 >> 0);
    *((unsigned int *)t12) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 255U);
    t14 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t14 & 255U);
    t19 = (t0 + 5712);
    t20 = (t19 + 56U);
    t24 = *((char **)t20);
    xsi_vlog_get_part_select_value(t218, 152, t24, 151, 0);
    xsi_vlogtype_concat(t217, 160, 160, 2U, t218, 152, t4, 8);
    t31 = (t0 + 3952);
    xsi_vlogvar_wait_assign_value(t31, t217, 0, 0, 160, 0LL);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB211:    goto LAB202;

LAB205:    t44 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB207;

LAB206:    *((unsigned int *)t30) = 1;
    goto LAB207;

LAB209:    xsi_set_current_line(132, ng0);

LAB212:    xsi_set_current_line(133, ng0);
    t58 = (t0 + 6992);
    t59 = (t58 + 56U);
    t65 = *((char **)t59);
    memset(t43, 0, 8);
    t66 = (t43 + 4);
    t70 = (t65 + 4);
    t41 = *((unsigned int *)t65);
    t46 = (t41 >> 0);
    *((unsigned int *)t43) = t46;
    t47 = *((unsigned int *)t70);
    t48 = (t47 >> 0);
    *((unsigned int *)t66) = t48;
    t49 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t49 & 255U);
    t50 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t50 & 255U);
    t74 = (t0 + 5712);
    t79 = (t74 + 56U);
    t80 = *((char **)t79);
    xsi_vlog_get_part_select_value(t218, 152, t80, 151, 0);
    xsi_vlogtype_concat(t217, 160, 160, 2U, t218, 152, t43, 8);
    t81 = (t0 + 5712);
    xsi_vlogvar_wait_assign_value(t81, t217, 0, 0, 160, 0LL);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 6352);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 5, t6, 5, t12, 5);
    t13 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 5, 0LL);
    goto LAB211;

LAB217:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB218;

LAB219:    xsi_set_current_line(150, ng0);

LAB222:    xsi_set_current_line(151, ng0);
    t31 = (t0 + 6352);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng17)));
    memset(t30, 0, 8);
    t35 = (t33 + 4);
    if (*((unsigned int *)t35) != 0)
        goto LAB224;

LAB223:    t42 = (t34 + 4);
    if (*((unsigned int *)t42) != 0)
        goto LAB224;

LAB227:    if (*((unsigned int *)t33) < *((unsigned int *)t34))
        goto LAB225;

LAB226:    t45 = (t30 + 4);
    t36 = *((unsigned int *)t45);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 != 0);
    if (t40 > 0)
        goto LAB228;

LAB229:    xsi_set_current_line(156, ng0);

LAB232:    xsi_set_current_line(157, ng0);
    t2 = (t0 + 6992);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t12 = (t4 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t13);
    t10 = (t9 >> 0);
    *((unsigned int *)t12) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 255U);
    t14 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t14 & 255U);
    t19 = (t0 + 5872);
    t20 = (t19 + 56U);
    t24 = *((char **)t20);
    xsi_vlog_get_part_select_value(t143, 56, t24, 55, 0);
    xsi_vlogtype_concat(t67, 64, 64, 2U, t143, 56, t4, 8);
    t31 = (t0 + 4432);
    xsi_vlogvar_wait_assign_value(t31, t67, 0, 0, 64, 0LL);
    xsi_set_current_line(158, ng0);
    t2 = (t0 + 5872);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t12 = (t4 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (t7 >> 8);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t13);
    t10 = (t9 >> 8);
    *((unsigned int *)t12) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 65535U);
    t14 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t14 & 65535U);
    t19 = (t0 + 4912);
    xsi_vlogvar_wait_assign_value(t19, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(159, ng0);
    t2 = (t0 + 6832);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = (t0 + 4752);
    xsi_vlogvar_wait_assign_value(t12, t6, 0, 0, 16, 0LL);
    xsi_set_current_line(160, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB230:    goto LAB221;

LAB224:    t44 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB226;

LAB225:    *((unsigned int *)t30) = 1;
    goto LAB226;

LAB228:    xsi_set_current_line(151, ng0);

LAB231:    xsi_set_current_line(152, ng0);
    t58 = (t0 + 6992);
    t59 = (t58 + 56U);
    t65 = *((char **)t59);
    memset(t43, 0, 8);
    t66 = (t43 + 4);
    t70 = (t65 + 4);
    t41 = *((unsigned int *)t65);
    t46 = (t41 >> 0);
    *((unsigned int *)t43) = t46;
    t47 = *((unsigned int *)t70);
    t48 = (t47 >> 0);
    *((unsigned int *)t66) = t48;
    t49 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t49 & 255U);
    t50 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t50 & 255U);
    t74 = (t0 + 5872);
    t79 = (t74 + 56U);
    t80 = *((char **)t79);
    xsi_vlog_get_part_select_value(t143, 56, t80, 55, 0);
    xsi_vlogtype_concat(t67, 64, 64, 2U, t143, 56, t43, 8);
    t81 = (t0 + 5872);
    xsi_vlogvar_wait_assign_value(t81, t67, 0, 0, 64, 0LL);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 6352);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 5, t6, 5, t12, 5);
    t13 = (t0 + 6352);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB230;

LAB236:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB237;

LAB238:    xsi_set_current_line(169, ng0);

LAB241:    xsi_set_current_line(170, ng0);
    t32 = (t0 + 6672);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t0 + 4912);
    t42 = (t35 + 56U);
    t44 = *((char **)t42);
    t45 = ((char*)((ng18)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_minus(t30, 32, t44, 16, t45, 32);
    memset(t43, 0, 8);
    t58 = (t34 + 4);
    t59 = (t30 + 4);
    t36 = *((unsigned int *)t34);
    t37 = *((unsigned int *)t30);
    t38 = (t36 ^ t37);
    t39 = *((unsigned int *)t58);
    t40 = *((unsigned int *)t59);
    t41 = (t39 ^ t40);
    t46 = (t38 | t41);
    t47 = *((unsigned int *)t58);
    t48 = *((unsigned int *)t59);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB245;

LAB242:    if (t49 != 0)
        goto LAB244;

LAB243:    *((unsigned int *)t43) = 1;

LAB245:    t66 = (t43 + 4);
    t52 = *((unsigned int *)t66);
    t53 = (~(t52));
    t54 = *((unsigned int *)t43);
    t55 = (t54 & t53);
    t56 = (t55 != 0);
    if (t56 > 0)
        goto LAB246;

LAB247:    xsi_set_current_line(191, ng0);

LAB282:    xsi_set_current_line(192, ng0);
    t2 = (t0 + 6672);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 16, t6, 16, t12, 16);
    t13 = (t0 + 6672);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(193, ng0);
    t2 = (t0 + 6192);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng9)));
    memset(t4, 0, 8);
    t13 = (t6 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB284;

LAB283:    t19 = (t12 + 4);
    if (*((unsigned int *)t19) != 0)
        goto LAB284;

LAB287:    if (*((unsigned int *)t6) < *((unsigned int *)t12))
        goto LAB285;

LAB286:    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB288;

LAB289:    xsi_set_current_line(198, ng0);

LAB292:    xsi_set_current_line(199, ng0);
    t2 = (t0 + 6992);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    memset(t30, 0, 8);
    t12 = (t30 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (t7 >> 0);
    *((unsigned int *)t30) = t8;
    t9 = *((unsigned int *)t13);
    t10 = (t9 >> 0);
    *((unsigned int *)t12) = t10;
    t11 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t11 & 255U);
    t14 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t14 & 255U);
    t19 = (t0 + 6032);
    t20 = (t19 + 56U);
    t24 = *((char **)t20);
    memset(t43, 0, 8);
    t31 = (t43 + 4);
    t32 = (t24 + 4);
    t15 = *((unsigned int *)t24);
    t16 = (t15 >> 0);
    *((unsigned int *)t43) = t16;
    t17 = *((unsigned int *)t32);
    t18 = (t17 >> 0);
    *((unsigned int *)t31) = t18;
    t22 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t22 & 16777215U);
    t23 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t23 & 16777215U);
    xsi_vlogtype_concat(t4, 32, 32, 2U, t43, 24, t30, 8);
    t33 = (t0 + 3152);
    xsi_vlogvar_wait_assign_value(t33, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(200, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6192);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(201, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB290:
LAB248:    goto LAB240;

LAB244:    t65 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t65) = 1;
    goto LAB245;

LAB246:    xsi_set_current_line(170, ng0);

LAB249:    xsi_set_current_line(171, ng0);
    t70 = ((char*)((ng6)));
    t74 = (t0 + 6672);
    xsi_vlogvar_wait_assign_value(t74, t70, 0, 0, 16, 0LL);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 5232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(174, ng0);
    t2 = (t0 + 6192);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng9)));
    memset(t4, 0, 8);
    t13 = (t6 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t13);
    t11 = *((unsigned int *)t19);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t19);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB253;

LAB250:    if (t18 != 0)
        goto LAB252;

LAB251:    *((unsigned int *)t4) = 1;

LAB253:    t24 = (t4 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB254;

LAB255:    xsi_set_current_line(178, ng0);
    t2 = (t0 + 6192);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng7)));
    memset(t4, 0, 8);
    t13 = (t6 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t13);
    t11 = *((unsigned int *)t19);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t19);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB261;

LAB258:    if (t18 != 0)
        goto LAB260;

LAB259:    *((unsigned int *)t4) = 1;

LAB261:    t24 = (t4 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB262;

LAB263:    xsi_set_current_line(182, ng0);
    t2 = (t0 + 6192);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t13 = (t6 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t13);
    t11 = *((unsigned int *)t19);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t19);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB269;

LAB266:    if (t18 != 0)
        goto LAB268;

LAB267:    *((unsigned int *)t4) = 1;

LAB269:    t24 = (t4 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB270;

LAB271:    xsi_set_current_line(186, ng0);
    t2 = (t0 + 6192);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t13 = (t6 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t13);
    t11 = *((unsigned int *)t19);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t19);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB277;

LAB274:    if (t18 != 0)
        goto LAB276;

LAB275:    *((unsigned int *)t4) = 1;

LAB277:    t24 = (t4 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB278;

LAB279:
LAB280:
LAB272:
LAB264:
LAB256:    goto LAB248;

LAB252:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB253;

LAB254:    xsi_set_current_line(174, ng0);

LAB257:    xsi_set_current_line(175, ng0);
    t31 = (t0 + 6992);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memset(t43, 0, 8);
    t34 = (t43 + 4);
    t35 = (t33 + 4);
    t36 = *((unsigned int *)t33);
    t37 = (t36 >> 0);
    *((unsigned int *)t43) = t37;
    t38 = *((unsigned int *)t35);
    t39 = (t38 >> 0);
    *((unsigned int *)t34) = t39;
    t40 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t40 & 255U);
    t41 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t41 & 255U);
    t42 = (t0 + 6032);
    t44 = (t42 + 56U);
    t45 = *((char **)t44);
    memset(t68, 0, 8);
    t58 = (t68 + 4);
    t59 = (t45 + 4);
    t46 = *((unsigned int *)t45);
    t47 = (t46 >> 0);
    *((unsigned int *)t68) = t47;
    t48 = *((unsigned int *)t59);
    t49 = (t48 >> 0);
    *((unsigned int *)t58) = t49;
    t50 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t50 & 16777215U);
    t51 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t51 & 16777215U);
    xsi_vlogtype_concat(t30, 32, 32, 2U, t68, 24, t43, 8);
    t65 = (t0 + 3152);
    xsi_vlogvar_wait_assign_value(t65, t30, 0, 0, 32, 0LL);
    xsi_set_current_line(176, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6192);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB256;

LAB260:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB261;

LAB262:    xsi_set_current_line(178, ng0);

LAB265:    xsi_set_current_line(179, ng0);
    t31 = ((char*)((ng1)));
    t32 = (t0 + 6992);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memset(t43, 0, 8);
    t35 = (t43 + 4);
    t42 = (t34 + 4);
    t36 = *((unsigned int *)t34);
    t37 = (t36 >> 0);
    *((unsigned int *)t43) = t37;
    t38 = *((unsigned int *)t42);
    t39 = (t38 >> 0);
    *((unsigned int *)t35) = t39;
    t40 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t40 & 255U);
    t41 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t41 & 255U);
    t44 = (t0 + 6032);
    t45 = (t44 + 56U);
    t58 = *((char **)t45);
    memset(t68, 0, 8);
    t59 = (t68 + 4);
    t65 = (t58 + 4);
    t46 = *((unsigned int *)t58);
    t47 = (t46 >> 0);
    *((unsigned int *)t68) = t47;
    t48 = *((unsigned int *)t65);
    t49 = (t48 >> 0);
    *((unsigned int *)t59) = t49;
    t50 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t50 & 65535U);
    t51 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t51 & 65535U);
    xsi_vlogtype_concat(t30, 32, 32, 3U, t68, 16, t43, 8, t31, 8);
    t66 = (t0 + 3152);
    xsi_vlogvar_wait_assign_value(t66, t30, 0, 0, 32, 0LL);
    xsi_set_current_line(180, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6192);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB264;

LAB268:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB269;

LAB270:    xsi_set_current_line(182, ng0);

LAB273:    xsi_set_current_line(183, ng0);
    t31 = ((char*)((ng1)));
    t32 = (t0 + 6992);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memset(t43, 0, 8);
    t35 = (t43 + 4);
    t42 = (t34 + 4);
    t36 = *((unsigned int *)t34);
    t37 = (t36 >> 0);
    *((unsigned int *)t43) = t37;
    t38 = *((unsigned int *)t42);
    t39 = (t38 >> 0);
    *((unsigned int *)t35) = t39;
    t40 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t40 & 255U);
    t41 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t41 & 255U);
    t44 = (t0 + 6032);
    t45 = (t44 + 56U);
    t58 = *((char **)t45);
    memset(t68, 0, 8);
    t59 = (t68 + 4);
    t65 = (t58 + 4);
    t46 = *((unsigned int *)t58);
    t47 = (t46 >> 0);
    *((unsigned int *)t68) = t47;
    t48 = *((unsigned int *)t65);
    t49 = (t48 >> 0);
    *((unsigned int *)t59) = t49;
    t50 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t50 & 255U);
    t51 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t51 & 255U);
    xsi_vlogtype_concat(t30, 32, 32, 3U, t68, 8, t43, 8, t31, 16);
    t66 = (t0 + 3152);
    xsi_vlogvar_wait_assign_value(t66, t30, 0, 0, 32, 0LL);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6192);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB272;

LAB276:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB277;

LAB278:    xsi_set_current_line(186, ng0);

LAB281:    xsi_set_current_line(187, ng0);
    t31 = ((char*)((ng1)));
    t32 = (t0 + 6992);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memset(t43, 0, 8);
    t35 = (t43 + 4);
    t42 = (t34 + 4);
    t36 = *((unsigned int *)t34);
    t37 = (t36 >> 0);
    *((unsigned int *)t43) = t37;
    t38 = *((unsigned int *)t42);
    t39 = (t38 >> 0);
    *((unsigned int *)t35) = t39;
    t40 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t40 & 255U);
    t41 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t41 & 255U);
    xsi_vlogtype_concat(t30, 32, 32, 2U, t43, 8, t31, 24);
    t44 = (t0 + 3152);
    xsi_vlogvar_wait_assign_value(t44, t30, 0, 0, 32, 0LL);
    xsi_set_current_line(188, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6192);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB280;

LAB284:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB286;

LAB285:    *((unsigned int *)t4) = 1;
    goto LAB286;

LAB288:    xsi_set_current_line(193, ng0);

LAB291:    xsi_set_current_line(194, ng0);
    t31 = (t0 + 6992);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memset(t30, 0, 8);
    t34 = (t30 + 4);
    t35 = (t33 + 4);
    t14 = *((unsigned int *)t33);
    t15 = (t14 >> 0);
    *((unsigned int *)t30) = t15;
    t16 = *((unsigned int *)t35);
    t17 = (t16 >> 0);
    *((unsigned int *)t34) = t17;
    t18 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t18 & 255U);
    t22 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t22 & 255U);
    t42 = (t0 + 6032);
    t44 = (t42 + 56U);
    t45 = *((char **)t44);
    memset(t43, 0, 8);
    t58 = (t43 + 4);
    t59 = (t45 + 4);
    t23 = *((unsigned int *)t45);
    t25 = (t23 >> 0);
    *((unsigned int *)t43) = t25;
    t26 = *((unsigned int *)t59);
    t27 = (t26 >> 0);
    *((unsigned int *)t58) = t27;
    t28 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t28 & 16777215U);
    t29 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t29 & 16777215U);
    xsi_vlogtype_concat(t67, 64, 32, 2U, t43, 24, t30, 8);
    t65 = (t0 + 6032);
    xsi_vlogvar_wait_assign_value(t65, t67, 0, 0, 64, 0LL);
    xsi_set_current_line(195, ng0);
    t2 = (t0 + 6192);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 4, t6, 4, t12, 4);
    t13 = (t0 + 6192);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB290;

}


extern void work_m_00000000001110212502_1105246375_init()
{
	static char *pe[] = {(void *)Initial_40_0,(void *)Always_45_1,(void *)Always_51_2};
	xsi_register_didat("work_m_00000000001110212502_1105246375", "isim/test_camerlinknew_isim_beh.exe.sim/work/m_00000000001110212502_1105246375.didat");
	xsi_register_executes(pe);
}
