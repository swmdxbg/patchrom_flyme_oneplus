.class Lcom/android/settings_ex/TetherSettings$2$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherSettings$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/TetherSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings$2;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$2$1;->this$1:Lcom/android/settings_ex/TetherSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$2$1;->this$1:Lcom/android/settings_ex/TetherSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$2$1;->this$1:Lcom/android/settings_ex/TetherSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$400(Lcom/android/settings_ex/TetherSettings;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    # invokes: Lcom/android/settings_ex/TetherSettings;->updateConnectedDeviceCount(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherSettings;->access$500(Lcom/android/settings_ex/TetherSettings;I)V

    .line 170
    return-void
.end method
