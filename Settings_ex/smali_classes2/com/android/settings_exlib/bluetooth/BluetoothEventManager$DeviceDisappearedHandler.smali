.class Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceDisappearedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 282
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 283
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 284
    const-string/jumbo v3, "BluetoothEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "received ACTION_DISAPPEARED for an unknown device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 287
    :cond_0
    invoke-static {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    .line 289
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;

    .line 290
    .local v1, "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    invoke-interface {v1, v0}, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    .end local v1    # "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    .end local v2    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "callback$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 281
    .end local v2    # "callback$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
