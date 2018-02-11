.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
.implements Lcom/android/settings_exlib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 704
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 705
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 702
    return-void
.end method

.method private getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mEnabled:Z

    if-nez v0, :cond_0

    const v0, 0x7f0e1062

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 725
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mConnected:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0e003c

    goto :goto_0

    .line 726
    :cond_1
    const v0, 0x7f0e0039

    goto :goto_0
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 731
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mEnabled:Z

    .line 732
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 730
    return-void

    .line 731
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnectionStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 737
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mConnected:Z

    .line 738
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 736
    return-void

    .line 737
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 747
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 757
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 752
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 742
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 710
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 711
    .local v0, "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    return-void

    .line 712
    :cond_0
    if-eqz p1, :cond_2

    .line 713
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mEnabled:Z

    .line 715
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 714
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mConnected:Z

    .line 716
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 717
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    .line 709
    :goto_1
    return-void

    .line 715
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 719
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    goto :goto_1
.end method
