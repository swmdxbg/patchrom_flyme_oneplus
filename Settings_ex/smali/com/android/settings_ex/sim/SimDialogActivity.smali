.class public Lcom/android/settings_ex/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static final CALLS_PICK:I = 0x1

.field public static final DATA_PICK:I = 0x0

.field public static DIALOG_TYPE_KEY:Ljava/lang/String; = null

.field public static final INVALID_PICK:I = -0x1

.field public static final PREFERRED_PICK:I = 0x3

.field public static PREFERRED_SIM:Ljava/lang/String; = null

.field public static final SMS_PICK:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 58
    const-string v0, "preferred_sim"

    sput-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 59
    const-string v0, "dialog_type"

    sput-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 323
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimDialogActivity;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/sim/SimDialogActivity;)Lcom/android/internal/telephony/IExtTelephony;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimDialogActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    return-object v0
.end method

.method private displayPreferredDialog(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 102
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_0

    .line 103
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "alertDialogBuilder":Lcom/oneplus/app/OPAlertDialog$Builder;
    const v4, 0x7f0c0618

    invoke-virtual {v0, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 105
    const v4, 0x7f0c0619

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 108
    const v4, 0x7f0c02d6

    new-instance v5, Lcom/android/settings_ex/sim/SimDialogActivity$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/settings_ex/sim/SimDialogActivity$1;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 121
    const v4, 0x7f0c02d7

    new-instance v5, Lcom/android/settings_ex/sim/SimDialogActivity$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/sim/SimDialogActivity$2;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 129
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 133
    .end local v0    # "alertDialogBuilder":Lcom/oneplus/app/OPAlertDialog$Builder;
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->finish()V

    goto :goto_0
.end method

.method private static setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 136
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 137
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 138
    const v1, 0x7f0c0c0c

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 139
    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 142
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 143
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 144
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 147
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 148
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 149
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 152
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 153
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 154
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 157
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 159
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 160
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 165
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 169
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v21, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v27

    .line 171
    .local v27, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v7, "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 174
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    const/16 v24, 0x0

    .line 176
    .local v24, "selectableSubInfoLength":I
    :goto_0
    new-instance v2, Lcom/android/settings_ex/sim/SimDialogActivity$3;

    move-object/from16 v3, p0

    move/from16 v4, p2

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/sim/SimDialogActivity$3;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 227
    .local v2, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v20, Lcom/android/settings_ex/sim/SimDialogActivity$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/sim/SimDialogActivity$4;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V

    .line 238
    .local v20, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v16, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 240
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v28

    .line 241
    .local v28, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v29

    .line 242
    .local v29, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v28 .. v28}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v23

    .line 245
    .local v23, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c27

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 248
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v22

    .line 250
    .local v22, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {v22 .. v22}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v26

    .line 252
    .local v26, "subId":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_1

    .line 253
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v25

    .line 255
    .local v25, "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    .end local v2    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v16    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .end local v20    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v22    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v24    # "selectableSubInfoLength":I
    .end local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v26    # "subId":I
    .end local v28    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v29    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    goto/16 :goto_0

    .line 257
    .restart local v2    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v16    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .restart local v22    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .restart local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v24    # "selectableSubInfoLength":I
    .restart local v26    # "subId":I
    .restart local v28    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v29    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    .end local v22    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v26    # "subId":I
    .end local v28    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v29    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c28

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 264
    move/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/SubscriptionInfo;

    .line 265
    .restart local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v18

    .line 267
    .local v18, "displayName":Ljava/lang/CharSequence;
    if-nez v18, :cond_3

    .line 268
    const-string v18, ""

    .line 270
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 273
    .end local v18    # "displayName":Ljava/lang/CharSequence;
    .end local v19    # "i":I
    .end local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 274
    move/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/SubscriptionInfo;

    .line 275
    .restart local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v18

    .line 276
    .restart local v18    # "displayName":Ljava/lang/CharSequence;
    if-nez v18, :cond_5

    .line 277
    const-string v18, ""

    .line 279
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 283
    .end local v18    # "displayName":Ljava/lang/CharSequence;
    .end local v19    # "i":I
    .end local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_6
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 285
    .local v13, "arr":[Ljava/lang/String;
    new-instance v15, Lcom/oneplus/app/OPAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 287
    .local v15, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    new-instance v8, Lcom/android/settings_ex/sim/SimDialogActivity$SelectAccountListAdapter;

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    move-object/from16 v10, v16

    :goto_4
    invoke-virtual {v15}, Lcom/oneplus/app/OPAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f040103

    move-object/from16 v9, p0

    move/from16 v14, p2

    invoke-direct/range {v8 .. v14}, Lcom/android/settings_ex/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 294
    .local v8, "adapter":Landroid/widget/ListAdapter;
    packed-switch p2, :pswitch_data_0

    .line 305
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dialog type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in SIM dialog."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    .end local v8    # "adapter":Landroid/widget/ListAdapter;
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    move-object v10, v7

    goto :goto_4

    :cond_8
    move-object v10, v5

    goto :goto_4

    .line 296
    .restart local v8    # "adapter":Landroid/widget/ListAdapter;
    :pswitch_0
    const v3, 0x7f0c0c0b

    invoke-virtual {v15, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 309
    :goto_5
    invoke-virtual {v15, v8, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v17

    .line 310
    .local v17, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 312
    new-instance v3, Lcom/android/settings_ex/sim/SimDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings_ex/sim/SimDialogActivity$5;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 319
    return-object v17

    .line 299
    .end local v17    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    const v3, 0x7f0c0c0d

    invoke-virtual {v15, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    goto :goto_5

    .line 302
    :pswitch_2
    const v3, 0x7f0c0c17

    invoke-virtual {v15, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    goto :goto_5

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 73
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v2, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, "dialogType":I
    const-string v2, "persist.radio.aosp_usr_pref_sel"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->finish()V

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :pswitch_0
    invoke-virtual {p0, p0, v0}, Lcom/android/settings_ex/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 89
    :pswitch_1
    sget-object v2, Lcom/android/settings_ex/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/SimDialogActivity;->displayPreferredDialog(I)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
