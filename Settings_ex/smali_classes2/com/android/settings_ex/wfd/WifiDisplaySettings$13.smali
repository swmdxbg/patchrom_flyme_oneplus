.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setListenMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p2, "val$enable"    # Z

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iput-boolean p2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 520
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;->val$enable:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "entered"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 521
    const-string/jumbo v2, " listen mode with reason "

    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 521
    const-string/jumbo v2, "."

    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void

    .line 520
    :cond_0
    const-string/jumbo v0, "exited"

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 511
    return-void
.end method
