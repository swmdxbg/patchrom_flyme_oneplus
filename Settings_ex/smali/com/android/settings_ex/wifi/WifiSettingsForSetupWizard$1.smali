.class Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard$1;
.super Ljava/lang/Object;
.source "WifiSettingsForSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard$1;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard$1;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard$1;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizard;->onAddNetworkPressed()V

    .line 68
    :cond_0
    return-void
.end method
