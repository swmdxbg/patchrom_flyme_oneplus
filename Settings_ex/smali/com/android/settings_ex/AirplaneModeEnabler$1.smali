.class Lcom/android/settings_ex/AirplaneModeEnabler$1;
.super Landroid/os/Handler;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeEnabler;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    # invokes: Lcom/android/settings_ex/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$000(Lcom/android/settings_ex/AirplaneModeEnabler;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
