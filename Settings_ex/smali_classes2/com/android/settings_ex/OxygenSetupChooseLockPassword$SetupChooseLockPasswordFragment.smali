.class public Lcom/android/settings_ex/OxygenSetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.source "OxygenSetupChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenSetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method
