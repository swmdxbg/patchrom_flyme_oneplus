.class Lcom/android/settings_exlib/wifi/WifiTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/wifi/WifiTracker;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker$2;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 546
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker$2;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/settings_exlib/wifi/WifiTracker;->updateWifiState(I)V
    invoke-static {v2, v3}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$200(Lcom/android/settings_exlib/wifi/WifiTracker;I)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 553
    :cond_2
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker$2;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    # getter for: Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;
    invoke-static {v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$300(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 554
    :cond_3
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 555
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 557
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker$2;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    # getter for: Lcom/android/settings_exlib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$400(Lcom/android/settings_exlib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 559
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker$2;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    # getter for: Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;
    invoke-static {v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$500(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 561
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker$2;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    # getter for: Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;
    invoke-static {v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$300(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 562
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker$2;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    # getter for: Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;
    invoke-static {v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$300(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 564
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker$2;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    # getter for: Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;
    invoke-static {v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$300(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
