.class Lcom/android/settings_ex/TetherService$1;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherService;->disableBtTethering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherService;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherService;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings_ex/TetherService$1;->this$0:Lcom/android/settings_ex/TetherService;

    iput-object p2, p0, Lcom/android/settings_ex/TetherService$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 194
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/TetherService$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 196
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 190
    return-void
.end method
