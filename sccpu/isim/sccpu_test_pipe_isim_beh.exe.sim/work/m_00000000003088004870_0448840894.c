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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "H:/Git/CPU/sccpu/sccpu.v";
static unsigned int ng1[] = {65535U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};



static void Cont_127_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t16[8];
    char t17[8];
    char t27[8];
    char t28[8];
    char t31[8];
    char t60[8];
    char t61[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t29;
    char *t30;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;

LAB0:    t1 = (t0 + 5492U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4832U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t56 = *((unsigned int *)t4);
    t57 = (~(t56));
    t58 = *((unsigned int *)t12);
    t59 = (t57 || t58);
    if (t59 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t60, 8);

LAB16:    t72 = (t0 + 5876);
    t73 = (t72 + 32U);
    t74 = *((char **)t73);
    t75 = (t74 + 40U);
    t76 = *((char **)t75);
    memcpy(t76, t3, 8);
    xsi_driver_vfirst_trans(t72, 0, 31);
    t77 = (t0 + 5832);
    *((int *)t77) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 1060U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t18 = (t17 + 4);
    t20 = (t19 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 10);
    *((unsigned int *)t17) = t22;
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 10);
    *((unsigned int *)t18) = t24;
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 65535U);
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 & 65535U);
    t29 = (t0 + 1060U);
    t30 = *((char **)t29);
    memset(t31, 0, 8);
    t29 = (t31 + 4);
    t32 = (t30 + 4);
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 25);
    t35 = (t34 & 1);
    *((unsigned int *)t31) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 >> 25);
    t38 = (t37 & 1);
    *((unsigned int *)t29) = t38;
    memset(t28, 0, 8);
    t39 = (t31 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t31);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t39) != 0)
        goto LAB19;

LAB20:    t46 = (t28 + 4);
    t47 = *((unsigned int *)t28);
    t48 = *((unsigned int *)t46);
    t49 = (t47 || t48);
    if (t49 > 0)
        goto LAB21;

LAB22:    t51 = *((unsigned int *)t28);
    t52 = (~(t51));
    t53 = *((unsigned int *)t46);
    t54 = (t52 || t53);
    if (t54 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t46) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t28) > 0)
        goto LAB27;

LAB28:    memcpy(t27, t55, 8);

LAB29:    xsi_vlogtype_concat(t16, 32, 32, 2U, t27, 16, t17, 16);
    goto LAB9;

LAB10:    t62 = (t0 + 1060U);
    t63 = *((char **)t62);
    memset(t61, 0, 8);
    t62 = (t61 + 4);
    t64 = (t63 + 4);
    t65 = *((unsigned int *)t63);
    t66 = (t65 >> 10);
    *((unsigned int *)t61) = t66;
    t67 = *((unsigned int *)t64);
    t68 = (t67 >> 10);
    *((unsigned int *)t62) = t68;
    t69 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t69 & 65535U);
    t70 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t70 & 65535U);
    t71 = ((char*)((ng2)));
    xsi_vlogtype_concat(t60, 32, 32, 2U, t71, 16, t61, 16);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t60, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

LAB17:    *((unsigned int *)t28) = 1;
    goto LAB20;

LAB19:    t45 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB20;

LAB21:    t50 = ((char*)((ng1)));
    goto LAB22;

LAB23:    t55 = ((char*)((ng2)));
    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t27, 16, t50, 16, t55, 16);
    goto LAB29;

LAB27:    memcpy(t27, t50, 8);
    goto LAB29;

}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 5636U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 5912);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}


extern void work_m_00000000003088004870_0448840894_init()
{
	static char *pe[] = {(void *)Cont_127_0,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000003088004870_0448840894", "isim/sccpu_test_pipe_isim_beh.exe.sim/work/m_00000000003088004870_0448840894.didat");
	xsi_register_executes(pe);
}
