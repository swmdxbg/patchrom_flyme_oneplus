.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$nameEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p2, "val$nameEditText"    # Landroid/widget/EditText;
    .param p3, "val$display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;->val$nameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;->val$nameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    :cond_0
    const/4 v0, 0x0

    .line 573
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-get1(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method
