.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;
.super Landroid/os/Handler;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 539
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->certificationExist()V

    .line 540
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$100(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$100(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$200(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 543
    :cond_0
    return-void
.end method
